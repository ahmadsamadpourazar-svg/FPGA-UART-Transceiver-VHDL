



function adc_scope_gui()
    clc;
    close all;

    % ================= User Settings =================
    defaultPort = "COM3";
    defaultBaud = 115200;

    bufferSize = 1000;

    rawData = zeros(1, bufferSize);
    maData  = zeros(1, bufferSize);
    lpfData = zeros(1, bufferSize);
    timeData = 1:bufferSize;

    isRunning = false;
    serialObj = [];

    % ================= Figure =================
    fig = figure( ...
        'Name', 'MicroBlaze ADC Digital Oscilloscope', ...
        'NumberTitle', 'off', ...
        'Color', [0.1 0.1 0.1], ...
        'Position', [100 100 1100 650], ...
        'CloseRequestFcn', @closeApp);

    % ================= Axes =================
    ax = axes('Parent', fig, ...
        'Position', [0.08 0.25 0.88 0.68], ...
        'Color', [0 0 0], ...
        'XColor', [1 1 1], ...
        'YColor', [1 1 1], ...
        'GridColor', [0.4 0.4 0.4]);

    grid(ax, 'on');
    hold(ax, 'on');

    rawLine = plot(ax, timeData, rawData, 'Color', [1 0.2 0.2], 'LineWidth', 1.2);
    maLine  = plot(ax, timeData, maData,  'Color', [0.2 1 0.2], 'LineWidth', 1.2);
    lpfLine = plot(ax, timeData, lpfData, 'Color', [0.2 0.6 1], 'LineWidth', 1.5);

    title(ax, 'ADC Signal: Raw / Moving Average / LPF', 'Color', [1 1 1]);
    xlabel(ax, 'Sample', 'Color', [1 1 1]);
    ylabel(ax, 'Voltage (V)', 'Color', [1 1 1]);

    legend(ax, {'Raw', 'MA', 'LPF'}, ...
        'TextColor', [1 1 1], ...
        'Color', [0.15 0.15 0.15]);

    ylim(ax, [0 3.3]);
    xlim(ax, [1 bufferSize]);

    % ================= UI Controls =================

    uicontrol(fig, 'Style', 'text', ...
        'String', 'COM Port:', ...
        'ForegroundColor', 'white', ...
        'BackgroundColor', [0.1 0.1 0.1], ...
        'Position', [70 105 70 25]);

    portEdit = uicontrol(fig, 'Style', 'edit', ...
        'String', defaultPort, ...
        'Position', [140 108 80 25]);

    uicontrol(fig, 'Style', 'text', ...
        'String', 'Baud:', ...
        'ForegroundColor', 'white', ...
        'BackgroundColor', [0.1 0.1 0.1], ...
        'Position', [240 105 50 25]);

    baudEdit = uicontrol(fig, 'Style', 'edit', ...
        'String', num2str(defaultBaud), ...
        'Position', [290 108 90 25]);

    startBtn = uicontrol(fig, 'Style', 'pushbutton', ...
        'String', 'Start', ...
        'Position', [410 105 90 30], ...
        'Callback', @startSerial);

    stopBtn = uicontrol(fig, 'Style', 'pushbutton', ...
        'String', 'Stop', ...
        'Position', [510 105 90 30], ...
        'Callback', @stopSerial);

    clearBtn = uicontrol(fig, 'Style', 'pushbutton', ...
        'String', 'Clear', ...
        'Position', [610 105 90 30], ...
        'Callback', @clearPlot);

    uicontrol(fig, 'Style', 'text', ...
        'String', 'Volt/Div:', ...
        'ForegroundColor', 'white', ...
        'BackgroundColor', [0.1 0.1 0.1], ...
        'Position', [730 105 70 25]);

    voltDivPopup = uicontrol(fig, 'Style', 'popupmenu', ...
        'String', {'0.2', '0.5', '1', '2', '3.3'}, ...
        'Value', 5, ...
        'Position', [800 108 80 25], ...
        'Callback', @updateScale);

    uicontrol(fig, 'Style', 'text', ...
        'String', 'Time/Div:', ...
        'ForegroundColor', 'white', ...
        'BackgroundColor', [0.1 0.1 0.1], ...
        'Position', [900 105 70 25]);

    timeDivPopup = uicontrol(fig, 'Style', 'popupmenu', ...
        'String', {'200', '500', '1000', '2000'}, ...
        'Value', 3, ...
        'Position', [970 108 80 25], ...
        'Callback', @updateScale);

    infoText = uicontrol(fig, 'Style', 'text', ...
        'String', 'Amplitude: -- V     Frequency: -- Hz', ...
        'ForegroundColor', [0.8 1 0.8], ...
        'BackgroundColor', [0.1 0.1 0.1], ...
        'FontSize', 11, ...
        'HorizontalAlignment', 'left', ...
        'Position', [70 55 700 30]);

    statusText = uicontrol(fig, 'Style', 'text', ...
        'String', 'Status: Disconnected', ...
        'ForegroundColor', [1 0.5 0.5], ...
        'BackgroundColor', [0.1 0.1 0.1], ...
        'FontSize', 11, ...
        'HorizontalAlignment', 'left', ...
        'Position', [70 20 500 30]);

    % ================= Timer =================

    t = timer( ...
        'ExecutionMode', 'fixedRate', ...
        'Period', 0.02, ...
        'TimerFcn', @updatePlot);

    % ================= Callback Functions =================

    function startSerial(~, ~)
        try
            port = string(get(portEdit, 'String'));
            baud = str2double(get(baudEdit, 'String'));

            if ~isempty(serialObj)
                clear serialObj;
            end

            serialObj = serialport(port, baud);
            configureTerminator(serialObj, "CR/LF");
            flush(serialObj);

            isRunning = true;
            start(t);

            set(statusText, 'String', "Status: Connected to " + port);
            set(statusText, 'ForegroundColor', [0.5 1 0.5]);

        catch ME
            set(statusText, 'String', "Status: Connection failed");
            set(statusText, 'ForegroundColor', [1 0.2 0.2]);
            disp(ME.message);
        end
    end

    function stopSerial(~, ~)
        isRunning = false;

        try
            stop(t);
        catch
        end

        try
            if ~isempty(serialObj)
                clear serialObj;
                serialObj = [];
            end
        catch
        end

        set(statusText, 'String', 'Status: Disconnected');
        set(statusText, 'ForegroundColor', [1 0.5 0.5]);
    end

    function clearPlot(~, ~)
        rawData(:) = 0;
        maData(:) = 0;
        lpfData(:) = 0;

        set(rawLine, 'YData', rawData);
        set(maLine, 'YData', maData);
        set(lpfLine, 'YData', lpfData);

        set(infoText, 'String', 'Amplitude: -- V     Frequency: -- Hz');
    end

    function updateScale(~, ~)
        voltOptions = get(voltDivPopup, 'String');
        voltValue = str2double(voltOptions{get(voltDivPopup, 'Value')});

        timeOptions = get(timeDivPopup, 'String');
        timeValue = str2double(timeOptions{get(timeDivPopup, 'Value')});

        ylim(ax, [0 voltValue]);
        xlim(ax, [1 timeValue]);
    end

    function updatePlot(~, ~)
        if ~isRunning || isempty(serialObj)
            return;
        end

        try
            while serialObj.NumBytesAvailable > 0
                line = readline(serialObj);
                line = strtrim(line);

                if contains(line, "raw")
                    continue;
                end

                values = split(line, ",");

                if numel(values) ~= 3
                    continue;
                end

                rawVal = str2double(values{1});
                maVal  = str2double(values{2});
                lpfVal = str2double(values{3});

                if isnan(rawVal) || isnan(maVal) || isnan(lpfVal)
                    continue;
                end

                rawData = [rawData(2:end), rawVal];
                maData  = [maData(2:end), maVal];
                lpfData = [lpfData(2:end), lpfVal];
            end

            set(rawLine, 'YData', rawData);
            set(maLine, 'YData', maData);
            set(lpfLine, 'YData', lpfData);

            updateMeasurements();

            drawnow limitrate;

        catch ME
            disp(ME.message);
        end
    end

    function updateMeasurements()
        data = lpfData;

        amp = max(data) - min(data);

        % تخمین ساده فرکانس از zero-crossing نسبت به میانگین
        meanVal = mean(data);
        centered = data - meanVal;

        crossings = find(centered(1:end-1) < 0 & centered(2:end) >= 0);

        if numel(crossings) >= 2
            periods = diff(crossings);
            avgPeriodSamples = mean(periods);

            % چون در کد C حدوداً هر 1ms نمونه می‌فرستیم:
            sampleRateApprox = 1000;

            freq = sampleRateApprox / avgPeriodSamples;
        else
            freq = 0;
        end

        set(infoText, 'String', sprintf('Amplitude: %.3f V     Frequency: %.2f Hz', amp, freq));
    end

    function closeApp(~, ~)
        try
            stop(t);
            delete(t);
        catch
        end

        try
            if ~isempty(serialObj)
                clear serialObj;
            end
        catch
        end

        delete(fig);
    end
end


clc;
clear;
close all;
%%
%%%%%%%%%%%%%%%%%%%%  part1 exercise 9
% % pi_fixed           = fi(pi,1,8,3);
% % temp1              = pi_fixed.value;  %% ans = '3.125'  ;
% % temp2              = pi_fixed.bin;    %% ans = '00011001'  ;
% % 
% % temp3              = str2num(temp1);  %% ans = 3.125 ;
% % quntisation_error = pi - temp3       %% ans = 0.016 ;

%%
%%%%%%%%%%%%%%%%%%%%  part2 exercise 9
%%(Floating-Point)
% % % 
% % % width_mm = 235; 
% % % aspect_ratio = 55; 
% % % rim_diameter_inch = 18;
% % % inch_to_mm = 25.4; 
% % % 
% % % %% CALCULATE height_mm:
% % % height_mm = (width_mm / 100) * aspect_ratio;
% % % %% CONVERT rim_diameter_INCH TO MM:
% % % rim_diameter_mm = rim_diameter_inch * inch_to_mm;
% % % %% CALCULATE wheel_diameter_mm:
% % % wheel_diameter_mm = rim_diameter_mm + 2 * height_mm;
% % % %% REAL PI
% % % circumference_precise = pi * wheel_diameter_mm;
% % % 
% % % % ????? ?????
% % % fprintf('---(Floating-Point) ---\n');
% % % fprintf('width_mm: %d mm\n', width_mm);
% % % fprintf('aspect_ratio: %d%%\n', aspect_ratio);
% % % fprintf('rim_diameter_inch, rim_diameter_mm : %.2f mm)\n', rim_diameter_inch, rim_diameter_mm);
% % % fprintf('height_mm :%.2f mm\n', height_mm);
% % % fprintf('wheel_diameter_mm: %.2f mm\n', wheel_diameter_mm);
% % % fprintf('circumference_precise : %.4f mm\n', circumference_precise);





% % % %%%%%%%%%%%%%%%%%%%%  part3 exercise 9
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     Fixed-point
% Parameters for tire
width_mm = 235;
aspect_ratio = 55;
rim_diameter_inch = 18;
inch_to_mm = 25.4;

% Fixed-Point settings
word_length = 32;
fraction_length = 9;
signed_mode = true;

% -- Fixed-Point Calculations --

% Convert constant and input values to fixed-point
width_fp = fi(width_mm, signed_mode, word_length, fraction_length);
aspect_ratio_fp = fi(aspect_ratio, signed_mode, word_length, fraction_length);
rim_diameter_inch_fp = fi(rim_diameter_inch, signed_mode, word_length, fraction_length);
inch_to_mm_fp = fi(inch_to_mm, signed_mode, word_length, fraction_length);
hundred_fp = fi(100, signed_mode, word_length, fraction_length);
two_fp = fi(2, signed_mode, word_length, fraction_length);
pi_fp = fi(pi, signed_mode, word_length, fraction_length);

% 1. Calculate sidewall height (H)
height_fp = fi( (width_fp / hundred_fp) * aspect_ratio_fp, signed_mode, word_length, fraction_length);

% 2. Convert rim diameter to millimeters
rim_diameter_mm_fp = fi(rim_diameter_inch_fp * inch_to_mm_fp, signed_mode, word_length, fraction_length);

% 3. Calculate total wheel diameter (D_wheel)
multiplication_result_fp = fi(two_fp * height_fp, signed_mode, word_length, fraction_length);
wheel_diameter_fp = fi(rim_diameter_mm_fp + multiplication_result_fp, signed_mode, word_length, fraction_length);

wheel_diameter_fp_double = double(wheel_diameter_fp);
fprintf('Total wheel diameter (Fixed-Point): %.4f mm\n', wheel_diameter_fp_double);

% 4. Calculate wheel circumference
circumference_calc_fp = fi(pi_fp * wheel_diameter_fp, signed_mode, word_length, fraction_length);
circumference_fp = circumference_calc_fp; % Already quantized

circumference_fp_double = double(circumference_fp);
fprintf('Wheel circumference (Fixed-Point): %.4f mm\n', circumference_fp_double);

% Calculate and display error compared to exact value
width_mm_exact = 235;
aspect_ratio_exact = 55;
rim_diameter_inch_exact = 18;
height_mm_exact = (width_mm_exact / 100) * aspect_ratio_exact;
rim_diameter_mm_exact = rim_diameter_inch_exact * 25.4;
wheel_diameter_mm_exact = rim_diameter_mm_exact + 2 * height_mm_exact;
circumference_exact = pi * wheel_diameter_mm_exact;

error_val = abs(circumference_exact - circumference_fp_double);
fprintf('Absolute error compared to exact calculation: %.6f mm\n', error_val);








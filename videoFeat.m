% extract video features: brightness

clc; clear; close all;
addpath(genpath('.'));

video_path = 'C:\Users\liuyi\Downloads\stimuli_FNL_01_loud.mp4';
v_obj = VideoReader(video_path);

%% 
VIDEO_LEN = v_obj.Duration;
mean_gray_level = zeros(length(2: 2: VIDEO_LEN), 1);

for i = 2: 2: VIDEO_LEN
    fprintf("%d\n", i);
    v_obj.CurrentTime = i - 1;
    cur_frame = readFrame(v_obj, 'default');
    % imshow(cur_frame, []);
    gray_frame = single(rgb2gray(cur_frame));
    mean_gray_level(i/2, 1) = mean(gray_frame(:));
    clearvars cur_frame;
end

%%

plot(1: length(mean_gray_level), mean_gray_level);
out_file = ['C:\Users\liuyi\Downloads\stimuli_FNL_01_MeanGrayLevel.mat']
save(out_file, 'mean_gray_level');

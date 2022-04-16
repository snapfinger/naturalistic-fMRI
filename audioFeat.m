%% extract audio features
clc; clear; close all;
addpath('C:\Users\liuyi\Downloads\')
addpath(genpath('MIRtoolbox1.8.1'))

%%
stimuli_root_path = 'C:\Users\liuyi\Downloads\'

%% extract audio from video
video_path = [stimuli_root_path 'stimuli_FNL_01_loud.mp4'];
out_audio_path = [stimuli_root_path 'stimuli_FNL_01_loud_audio.wav'];
% [input_file, Fs] = audioread(video_path);
% audiowrite(out_audio_path, input_file, Fs);

%% load audio data
audio_cc1_path = out_audio_path
audio_cc1_mir = miraudio(audio_cc1_path);
audio_cc1_data = mirgetdata(audio_cc1_mir);

% extract RMS
rms_mir = mirrms(audio_cc1_mir, 'Frame', 2, 's', 1, '/1');
rms = mirgetdata(rms_mir);
plot(1: length(rms), rms);
save([stimuli_root_path 'stimuli_FNL_01_RMS.mat'], 'rms');

%%
load([stimuli_root_path 'stimuli_FNL_01_MeanGrayLevel.mat']);

%%
plot(1: length(rms), rms);
hold on;
plot(1: length(mean_gray_level), mean_gray_level);


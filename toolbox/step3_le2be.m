clc;
clear all;


infile=strcat('scp\\dcase2016_all_lps.scp');
fsmlf = fopen(infile); 
%��fgetl��ǰ�� 7�� ע��fgetl������Կյ��У���������յ��У���fgetl�����һ���յ��ַ���
tline = fgetl(fsmlf) ; %fgetl һ�ν�����һ�У���������һ�е��ַ�����·��~
%fgetl�������Ǵ��ı��ж�ȡһ�����ݣ���������ĩ�Ļ��з�

%system('mkdir D:\user\jundu\xuyong\yanping_10h\lsp_8k_be');

while (tline~=-1)

    
[htkdata,nFrames,sampPeriod,sampSize,paramKind]=readhtk_new(tline,'le');
htkdata=htkdata';

tline=strrep(tline,'E:\research\acoustic_event_detection\data\DCASE2016_lps_1ch\','E:\research\acoustic_event_detection\data\DCASE2016_lps_1ch_be\');

%writeHTK_new('D:\user\jundu\xuyong\cmu_one_speaker\get_1_test_sentence_allnoise_N2SNR10\out\out.htk', dataout, batchsize, 160000, 516, 9, 'le')
writeHTK_new(tline, htkdata, nFrames, sampPeriod, sampSize, paramKind, 'be');
%break;
tline = fgetl(fsmlf) ;%���µ���һ��
end



% %%%%%%for clean
% infile=strcat('yangping_1h_lsp_8k_train_N2SNR10.scp');
% fsmlf = fopen(infile); 
% %��fgetl��ǰ�� 7�� ע��fgetl������Կյ��У���������յ��У���fgetl�����һ���յ��ַ���
% tline = fgetl(fsmlf) ; %fgetl һ�ν�����һ�У���������һ�е��ַ�����·��~
% %fgetl�������Ǵ��ı��ж�ȡһ�����ݣ���������ĩ�Ļ��з�
% while (tline~=-1)
% 
% [htkdata,nFrames,sampPeriod,sampSize,paramKind]=readHTK_new(tline,'le');
% htkdata=htkdata';
% 
% tline=strrep(tline,'D:\user\jundu\xuyong\yanping_10h\lsp_8k\','D:\user\jundu\xuyong\yanping_1h\N2_SNR10\get_smaller_txt_for_gpu_debug\lsp_clean_be\');
% 
% %writeHTK_new('D:\user\jundu\xuyong\cmu_one_speaker\get_1_test_sentence_allnoise_N2SNR10\out\out.htk', dataout, batchsize, 160000, 516, 9, 'le')
% writeHTK_new(tline, htkdata, nFrames, sampPeriod, sampSize, paramKind, 'be');
% % break;
% tline = fgetl(fsmlf) ;%���µ���һ��
% end

function test_bug811

% TEST test_bug811
% TEST ft_checkdata spm2fieldtrip

addpath('/home/common/matlab/spm8');

filename = '/home/common/matlab/fieldtrip/data/test/bug811/cespm8_LD031286_DOELLER_20100223_01.mat';

D = spm_eeg_load(filename);
data = spm2fieldtrip(D);
ft_checkdata(data, 'datatype', 'raw');


function [DCGMean iDCGMean nDCGMean] = testMain(abs_path, mq_label, mqinst_num, dataset)
% 1) input: abs_path of output.xls (abs path still not used!)
% 2) input: MQ label (e.g. MQ1)
% 3) input: number of MQ instances
% 4) input: dataset ('uml'/'webml')
%
% computes DCG and iDCG for all the instances of the given MQ
% then it averages by instance for each experiment
% output:
% 1) DCGMean (a cell array with 4 cells: the DCG mean for this meta query)
% 2) iDCGMean (one array with the iDCG for this meta query)
% 3) nDCGMean
% This function also plots mean DCG/iDCG and mean nDCG and saves it to files.

% TODO: usa ABSPATH!!!!

% read configuration file
if strcmp(dataset,'uml')
    [keynames,values]=textread('uml-config.txt','%s=%s');
elseif strcmp(dataset,'webml')
    [keynames,values]=textread('webml-config.txt','%s=%s');
else
    'The only two supported dataset are webml and uml!';
    return;
end

v = str2double(values); 
idx = ~isnan(v);
values(idx) = num2cell(v(idx));
configuration = cell2struct(values, keynames);

% contains DCG functions for all meta query instance
% each cell contains 4 arrays containing the DCG for the 4 experiments
DCGOutput = cell(1,mqinst_num);

% contains iDCG functions for all meta query instance
% each cell contains 1 array containing the iDCG for the meta query
% instance
iDCGOutput = cell(1,mqinst_num);

fprintf('------- DCG/iDCG -------- \n \n \n');

% for all instances
for i=1:mqinst_num
    
    if strcmp(dataset,'uml')
        % construct MQISNT label (e.g. MQ1-INST1)
        mqinst_label = strcat(mq_label, '-INST', num2str(i));
    else
        mqinst_label = strcat('INST', num2str(i));    
    end
    
    fprintf('NOW starting %s \n', mqinst_label);
    
    % reads the proper spreadsheet for the system (basic mode)
    % [num,txt_system,raw] = xlsread('output.xls',mqinst_label,'','basic');
   
    % reads the proper spreadsheet for the system
    [num,txt_system,raw] = xlsread('output.xls',mqinst_label);
    
    % load spreadsheet for the groundtruth (basic mode)
    % [num,txt_groundtruth,raw] = xlsread('groundtruth.xls',mqinst_label,'','basic');

    % load spreadsheet for the groundtruth
    [num,txt_groundtruth,raw] = xlsread('groundtruth.xls',mqinst_label);
    
    DCG_i = DCG(txt_system, txt_groundtruth, configuration, dataset);
    iDCG_i = iDCG(txt_groundtruth, configuration, dataset);
    
    iDCGOutput{1,i} = iDCG_i;
    DCGOutput{1,i} = DCG_i;
end

% compute nDCG
nDCGOutput = nDCG(DCGOutput, iDCGOutput, configuration, mqinst_num);
nDCGMean = cell(1,configuration.experiments_number);
% average nDCG for all meta query instances
for j=1:configuration.experiments_number
    nDCGMean{1,j} = cellfun(@mean, nDCGOutput(:,j));
end

% average DCG for all meta query instances
DCGsum = cell(1,configuration.experiments_number);

% TODO: find a smart way to do this mean with cell arrays

% sum
% for all experiment
for j=1:configuration.experiments_number
    DCGsum_j = zeros(10,1);
    %for all instance
    for i=1:mqinst_num
       DCG_ij = DCGOutput{i}{j};
       DCGsum_j = DCGsum_j + DCG_ij;
    end
    DCGsum{1,j} = DCGsum_j;
end

% divide
for j=1:configuration.experiments_number
   DCGMean{1,j} = DCGsum{1,j}/10;  
end

% sum
iDCGsum = zeros(10,1);
for i=1:mqinst_num
    iDCGsum = iDCGsum + iDCGOutput{i};
end

% divide
iDCGMean = iDCGsum/10;

% plot it all!
plotDCG(DCGMean, iDCGMean, nDCGMean, mq_label, dataset);
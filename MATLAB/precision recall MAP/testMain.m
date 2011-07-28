function [PRCurveMean elevenInterpAvgPr MAP MRR] = testMain(mq_label, mqinst_num, dataset)

fprintf('------- Precision at fixed retrieval level k | 11-point interpolated average precision | Mean Average Precision MAP | Mean Reciprocal Rank MRR -------\n\n');

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

% istances declaration 
allPRCurves = cell(mqinst_num,1);

allIntPRCurves = cell(mqinst_num,1);

% contain result set for alla instances
% this is a experiments_numberX1 cell array because it contains
% 10 results set (10 instances) for each experiment
resultSetCellsForAllInstances = cell(configuration.experiments_number,1);
for j=1:configuration.experiments_number
    resultSetCellsForAllInstances{j} = cell(mqinst_num,1);
end

groundtruthForAllInstances = cell(mqinst_num,1);

% for all instances
for i=1:mqinst_num
    
    if strcmp(dataset,'uml')
        % construct MQISNT label (e.g. MQ1-INST1)
        mqinst_label = strcat(mq_label, '-INST', num2str(i));
    else
        mqinst_label = strcat('INST', num2str(i));    
    end

    fprintf('Reading excel spreadsheet for %s\n', mqinst_label);
    
    % reads the proper spreadsheet for the system
    [num,txt_system,raw] = xlsread('output.xls',mqinst_label);

    % load spreadsheet for the groundtruth
    [num,txt_groundtruth,raw] = xlsread('groundtruth.xls',mqinst_label);
    
    % contains all result sets for this query instance
    resultSetCells = cell(1,configuration.experiments_number+1);

    % contains result sets for the system
    resultSetCells(1,1:configuration.experiments_number)= makeCellSystem(txt_system, configuration, dataset);
    % contains groundtruth
    resultSetCells{1,configuration.experiments_number+1} = makeCellGroundtruth(txt_groundtruth, configuration, dataset);

    % filtering groundtruth for webml (pruning the zeros)
    if strcmp(dataset,'webml')
        resultSetCells{1,configuration.experiments_number+1} = filterWebmlGroundtruth(resultSetCells{1,configuration.experiments_number+1});
    end
    
    % this is needed for MAP later
    groundtruthForAllInstances{i} = makeCellGroundtruth(txt_groundtruth, configuration, dataset);
    % filtering groundtruth for webml (pruning the zeros)
    if strcmp(dataset,'webml')
        groundtruthForAllInstances{i} = filterWebmlGroundtruth(groundtruthForAllInstances{i});
    end
    groundtruthForAllInstances{i} = groundtruthForAllInstances{i}(:,1);
    
    fprintf('STARTED to compute (interpolated) PR curve for %s ...\n', mqinst_label);    
    % contains PR/intPR curves for the experiments
    PRCurves_j = cell(configuration.experiments_number,1);
    intPRCurves_j = cell(configuration.experiments_number,1);
    
    % for all experiments
    for j=1:configuration.experiments_number
        
        relevant_docs_number = size(resultSetCells{1,configuration.experiments_number+1},1);
        retrieved_docs_number = size(resultSetCells{1,j},1);        
        
        % preparing the input for PRcurve: only the ids are needed since
        % relevance is not useful for computing precision/recall stuff; a
        % document can be only relevant or not relevant

        % relevant set
        relevant_set_ij = resultSetCells{1,configuration.experiments_number+1}(1:relevant_docs_number);
        % sytem result
        system_result_ij = resultSetCells{1,j}(1:retrieved_docs_number);
        
        % transpose cell arrays to fit PRcurve inputs
        relevant_set_ij = relevant_set_ij.';
        % system_result_ij = system_result_ij.';
        
        % fill struct that will be used to compute meanAP
        resultSetCellsForAllInstances{j,1}{i,1} = system_result_ij;
        
        % compute PRCurve for experiment j instance query i
        [PRCurve_ij intPRCurve_ij] = PRcurve(relevant_set_ij, system_result_ij);
        
        % save PR\intPRCurve into cell array of PRCurves for this experiment j
        PRCurves_j{j} = PRCurve_ij;
        intPRCurves_j{j} = intPRCurve_ij;
        
    end
    
    % Save PR\intPRCurve for this experiment j into cell array of all
    % PR\intPRCurve of all query instances
    allPRCurves{i} = PRCurves_j;
    allIntPRCurves{i} = intPRCurves_j;
    
    fprintf('... FINISHED to compute (interpolated) PR curve for %s\n', mqinst_label);    
end

%%%% Precision at fixed retrieval level k %%%%
fprintf('Precision at fixed retrieval level k\n');    
experiments_P = cell(configuration.experiments_number,1);
experiments_R = cell(configuration.experiments_number,1);

for j=1:configuration.experiments_number
    for i=1:mqinst_num
        instanceCurves = allPRCurves{i};
        experiments_P{j} = [experiments_P{j}; instanceCurves{j}(:,1).'];
        experiments_R{j} = [experiments_R{j}; instanceCurves{j}(:,2).'];
    end
end

PRCurveMean = cell(4,1);

for j=1:configuration.experiments_number
    PRCurveMean{j} = [mean(cell2mat(experiments_P{j})); mean(cell2mat(experiments_R{j}))]; 
end

% k retrieval levels
x = 1:1:10;

figure

if strcmp(dataset,'uml')
    plot(x,PRCurveMean{1}(1,:),x,PRCurveMean{2}(1,:),x,PRCurveMean{3}(1,:),x,PRCurveMean{4}(1,:));
    hleg = legend('Experiment A', 'Experiment B', 'Experiment C', 'Experiment D', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'UML: Precision at fixed retrieval levels (k = 1:1:10)', mq_label});
    set(t,'FontSize',10);

    xlabel('k level');
    ylabel('precision at k')
else
    plot(x,PRCurveMean{1}(1,:),x,PRCurveMean{2}(1,:));
    hleg = legend('Experiment B', 'Experiment C', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'WebML: Precision at fixed retrieval levels (k = 1:1:10)', mq_label});
    set(t,'FontSize',10);

    xlabel('k level');
    ylabel('precision at k')
end

%%%% 11-point interpolated average precision %%%%
fprintf('11-point interpolated average precision\n');
elevenPointsExperiments = cell(configuration.experiments_number,1);
elevenPoints = cell(10,1);

% sample precision values at standard recall levels r = 0.0:0.1:1.0
% r = 0:0.1:1; % this interval could be stupid: the result sets have size
% 10 so it's almost impossible to reach recall = 1
r = 0:0.1:1;
% for each instance
for i=1:10
    % for each experiment
    for j=1:configuration.experiments_number
        % extract the specific intPRCurve i,j
       intPRCurve_ij = allIntPRCurves{i,1}{j,1};
       elevenPoints_ij = interp1q(cell2mat(intPRCurve_ij(1:11,2)),cell2mat(intPRCurve_ij(1:11,1)),r');  
       % NaN -> 0
       for q=1:11
           if isnan(elevenPoints_ij(q))==1
                elevenPoints_ij(q) = 0;
           end
       end
       elevenPointsExperiments{j} = elevenPoints_ij;
    end
    elevenPoints{i} = elevenPointsExperiments;
end

experiments_elevenPoints = cell(configuration.experiments_number,1);

for j=1:configuration.experiments_number
    for i=1:mqinst_num
        elevenPointsInstanceCurves = elevenPoints{i};
        experiments_elevenPoints{j} = [experiments_elevenPoints{j}; elevenPointsInstanceCurves{j}.'];         
    end
end

elevenInterpAvgPr = cell(configuration.experiments_number,1);

for j=1:configuration.experiments_number  
    elevenInterpAvgPr{j} = mean(experiments_elevenPoints{j});
end

figure

if strcmp(dataset,'uml')
    plot(r,elevenInterpAvgPr{1},r,elevenInterpAvgPr{2},r,elevenInterpAvgPr{3},r,elevenInterpAvgPr{4});
    hleg = legend('Experiment A', 'Experiment B', 'Experiment C', 'Experiment D', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'UML: 11-point interpolated average precision (r=0:0.1:1)', mq_label});
    set(t,'FontSize',10);

    xlabel('r level');
    ylabel('precision at r')
else
    plot(r,elevenInterpAvgPr{1},r,elevenInterpAvgPr{2});
    hleg = legend('Experiment B', 'Experiment C', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'WebML: 11-point interpolated average precision (r=0:0.1:1)', mq_label});
    set(t,'FontSize',10);

    xlabel('r level');
    ylabel('precision at r')
end

%%%% MAP %%%%
if strcmp(dataset,'uml')
    fprintf('UML - MAP\n');
else
    fprintf('WebML - MAP\n');
end

MAP = zeros(configuration.experiments_number,1);
% for each experiment
for j=1:configuration.experiments_number
    MAP(j,1) = MeanAP(groundtruthForAllInstances,resultSetCellsForAllInstances{j});
end

if strcmp(dataset,'uml')
    fprintf(' ---- MAP experiment A: %f ----\n',MAP(1,1));
    fprintf(' ---- MAP experiment B: %f ----\n',MAP(2,1));
    fprintf(' ---- MAP experiment C: %f ----\n',MAP(3,1));
    fprintf(' ---- MAP experiment D: %f ----\n',MAP(4,1));
else
    fprintf(' ---- MAP experiment B: %f ----\n',MAP(1,1));
    fprintf(' ---- MAP experiment C: %f ----\n',MAP(2,1));
end

%%%% MRR %%%%
if strcmp(dataset,'uml')
    fprintf('UML - MRR\n');
else
    fprintf('WebML - MRR\n');
end

MRR = zeros(configuration.experiments_number,1);

% for each experiment
for j=1:configuration.experiments_number
    MRR(j,1) = MeanRR(groundtruthForAllInstances,resultSetCellsForAllInstances{j});
end
if strcmp(dataset,'uml')
    fprintf(' ---- MRR experiment A: %f ----\n',MRR(1,1));
    fprintf(' ---- MRR experiment B: %f ----\n',MRR(2,1));
    fprintf(' ---- MRR experiment C: %f ----\n',MRR(3,1));
    fprintf(' ---- MRR experiment D: %f ----\n',MRR(4,1));
else
    fprintf(' ---- MRR experiment B: %f ----\n',MRR(1,1));
    fprintf(' ---- MRR experiment C: %f ----\n',MRR(2,1));
end
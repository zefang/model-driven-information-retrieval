function [PRCurveMean elevenInterpAvgPr MAP MRR] = testMain(mq_label, mqinst_num)

fprintf('------- Precision at fixed retrieval level k | 11-point interpolated average precision | Mean Average Precision MAP | Mean Reciprocal Rank MRR -------\n\n');

% istances declaration 
allPRCurves = cell(mqinst_num,1);

allIntPRCurves = cell(mqinst_num,1);

resultSetCellsForAllInstances = cell(4,1);
resultSetCellsForAllInstances{1} = cell(10,1);
resultSetCellsForAllInstances{2} = cell(10,1);
resultSetCellsForAllInstances{3} = cell(10,1);
resultSetCellsForAllInstances{4} = cell(10,1);
groundtruthForAllInstances = cell(10,1);

% for all instances
for i=1:mqinst_num
    
    % construct MQISNT label (e.g. MQ1-INST1)
    mqinst_label = strcat(mq_label, '-INST', num2str(i));

    fprintf('Reading excel spreadsheet for %s\n', mqinst_label);
    
    % reads the proper spreadsheet for the system
    [num,txt_system,raw] = xlsread('output.xls',mqinst_label);

    % load spreadsheet for the groundtruth
    [num,txt_groundtruth,raw] = xlsread('groundtruth.xls',mqinst_label);
    
    % contains all result sets
    resultSetCells = cell(1,5);

    % contains result sets for the system
    resultSetCells(1,1:4)= makeCellSystem(txt_system);
    % contains groundtruth
    resultSetCells{1,5} = makeCellGroundtruth(txt_groundtruth);
    
    % this is needed for MAP later
    groundtruthForAllInstances{i} = makeCellGroundtruth(txt_groundtruth);
    groundtruthForAllInstances{i} = groundtruthForAllInstances{i}(:,1);
    
    fprintf('STARTED to compute (interpolated) PR curve for %s ...\n', mqinst_label);    
    % contains PR/intPR curves for the four experiments
    PRCurves_j = cell(4,1);
    intPRCurves_j = cell(4,1);
    
    % for all experiments
    for j=1:4
        
        relevant_docs_number = size(resultSetCells{1,5},1);
        retrieved_docs_number = size(resultSetCells{1,j},1);        
        
        % preparing the input for PRcurve: only the ids are needed since
        % relevance is not useful for computing precision/recall stuff; a
        % document can be only relevant or not relevant

        % relevant set
        relevant_set_ij = resultSetCells{1,5}(1:relevant_docs_number);
        % sytem result
        system_result_ij = resultSetCells{1,j}(1:retrieved_docs_number);
        
        % transpose cell arrays to fit PRcurve inputs
        relevant_set_ij = relevant_set_ij.';
        system_result_ij = system_result_ij.';
        
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
experimentA_P = [];
experimentA_R = [];
experimentB_P = [];
experimentB_R = [];
experimentC_P = [];
experimentC_R = [];
experimentD_P = [];
experimentD_R = [];

for i=1:10
    
    instanceCurves = allPRCurves{i};
    experimentA_P = [experimentA_P; instanceCurves{1}(:,1).'];
    experimentA_R = [experimentA_R; instanceCurves{1}(:,2).'];
    
    experimentB_P = [experimentB_P; instanceCurves{2}(:,1).'];
    experimentB_R = [experimentB_R; instanceCurves{2}(:,2).'];
    
    experimentC_P = [experimentC_P; instanceCurves{3}(:,1).'];
    experimentC_R = [experimentC_R; instanceCurves{3}(:,2).'];
    
    experimentD_P = [experimentD_P; instanceCurves{4}(:,1).'];
    experimentD_R = [experimentD_R; instanceCurves{4}(:,2).'];
    
end

PRCurveMean = cell(4,1);

PRCurveMean{1} = [mean(cell2mat(experimentA_P)); mean(cell2mat(experimentA_R))];
PRCurveMean{2} = [mean(cell2mat(experimentB_P)); mean(cell2mat(experimentB_R))];
PRCurveMean{3} = [mean(cell2mat(experimentC_P)); mean(cell2mat(experimentC_R))];
PRCurveMean{4} = [mean(cell2mat(experimentD_P)); mean(cell2mat(experimentD_R))];

% for j=1:4
%     figure
%     plot(PRCurveMean{j}(2,:),PRCurveMean{j}(1,:),'r:+');
%     title(strcat('precision-recall curve', num2str(j)));
%     xlabel('recall')
%     ylabel('precision')
% end

% k retrieval levels
x = 1:1:10;

plot(x,PRCurveMean{1}(1,:),x,PRCurveMean{2}(1,:),x,PRCurveMean{3}(1,:),x,PRCurveMean{4}(1,:));
hleg = legend('Experiment A', 'Experiment B', 'Experiment C', 'Experiment D', 'Location', 'NorthEastOutside');

set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

t = title({'Precision at fixed retrieval levels (k = 1:1:10)', mq_label});
set(t,'FontSize',10);

xlabel('k level');
ylabel('precision at k')

%%%% 11-point interpolated average precision %%%%
fprintf('11-point interpolated average precision\n');
elevenPointsExperiments = cell(4,1);
elevenPoints = cell(10,1);

% sample precision values at standard recall levels r = 0.0:0.1:1.0
% r = 0:0.1:1; % this interval could be stupid: the result sets have size
% 10 so it's almost impossible to reach recall = 1
r = 0:0.1:1;
% for each instance
for i=1:10
    % for each experiment
    for j=1:4
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

experimentA_elevenPoints = [];
experimentB_elevenPoints = [];
experimentC_elevenPoints = [];
experimentD_elevenPoints = [];

for i=1:10
    
    elevenPointsInstanceCurves = elevenPoints{i};
    
    experimentA_elevenPoints = [experimentA_elevenPoints; elevenPointsInstanceCurves{1}.'];  
    experimentB_elevenPoints = [experimentB_elevenPoints; elevenPointsInstanceCurves{2}.'];
    experimentC_elevenPoints = [experimentC_elevenPoints; elevenPointsInstanceCurves{3}.'];
    experimentD_elevenPoints = [experimentD_elevenPoints; elevenPointsInstanceCurves{4}.'];
    
end

elevenInterpAvgPr = cell(4,1);

elevenInterpAvgPr{1} = mean(experimentA_elevenPoints);
elevenInterpAvgPr{2} = mean(experimentB_elevenPoints);
elevenInterpAvgPr{3} = mean(experimentC_elevenPoints);
elevenInterpAvgPr{4} = mean(experimentD_elevenPoints);

figure

plot(r,elevenInterpAvgPr{1},r,elevenInterpAvgPr{2},r,elevenInterpAvgPr{3},r,elevenInterpAvgPr{4});
hleg = legend('Experiment A', 'Experiment B', 'Experiment C', 'Experiment D', 'Location', 'NorthEastOutside');

set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

t = title({'11-point interpolated average precision (r=0:0.1:1)', mq_label});
set(t,'FontSize',10);

xlabel('r level');
ylabel('precision at r')

%%%% MAP %%%%
fprintf('MAP\n');
MAP = zeros(4,1);
% for each experiment
for j=1:4
    MAP(j,1) = MeanAP(groundtruthForAllInstances,resultSetCellsForAllInstances{j});
end

fprintf(' ---- MAP experiment A: %f ----\n',MAP(1,1));
fprintf(' ---- MAP experiment B: %f ----\n',MAP(2,1));
fprintf(' ---- MAP experiment C: %f ----\n',MAP(3,1));
fprintf(' ---- MAP experiment D: %f ----\n',MAP(4,1));

%%%% MRR %%%%
fprintf('MRR\n');
MRR = zeros(4,1);
% for each experiment
for j=1:4
    MRR(j,1) = MeanRR(groundtruthForAllInstances,resultSetCellsForAllInstances{j});
end

fprintf(' ---- MRR experiment A: %f ----\n',MRR(1,1));
fprintf(' ---- MRR experiment B: %f ----\n',MRR(2,1));
fprintf(' ---- MRR experiment C: %f ----\n',MRR(3,1));
fprintf(' ---- MRR experiment D: %f ----\n',MRR(4,1));
function DCG = DCG(txt_system, txt_groundtruth, configuration, dataset)
% takes in input:
% 1) the txt version of the excel spreadsheet for the system
% this spreadsheet corrensponds to one single meta query instance
% 2) the txt version of the excel spreadsheet for the groundtruth
%
% computes the DCG for each experiment for the meta query instance

% TODO: use absPath

% contains all result sets
resultSetCells = cell(1,5);

resultSetCells(1,1:configuration.experiments_number)= makeCellSystem(txt_system, configuration, dataset);
resultSetCells{1,5} = makeCellGroundtruth(txt_groundtruth, configuration, dataset);

% contains final DCGs
DCG = cell(1,configuration.experiments_number);

% groundtruth result set
groundtruth = resultSetCells{1,5};

% for all experiments
for i=1:configuration.experiments_number
    fprintf('NOW starting experiment %d\n',i);
    
    % contains the DCG for the i-th experiment
    DCG_i = zeros(10,1);
    % load the result set for the i-th experiment
    exp_i = resultSetCells{1,i};
    % this check is needed for EMPTY system result rankings
    % if the first cell of exp_i is empty, then return a DCG
    % with all zeros
    if (isempty(exp_i{1})==1)
        DCG{1,i} = DCG_i;
        continue;
    end
    % this is the length of the current system result
    exp_iMaxRows = size(exp_i,1);
    % for all docs into result set
    for j=1:10
        if (j <= exp_iMaxRows)
            % load its id
            docId_j = exp_i{j,1};
            % check if it is present into groundtruth result set..
            indexCell = strfind(groundtruth(:,1),docId_j);
            indexArray = cellfun(@(x) isequal(x,1), indexCell);
            index = find(indexArray == 1);
            % ..if it is present
            if(isempty(index) == 0)
                rel_j = groundtruth(index,2);
                rel_j = str2double(rel_j{1});
                fprintf('%d) Document with id %s FOUND in groundtruth with relevance %d\n', j, docId_j, rel_j);
            else
            % ..if not, relevance = 0
                rel_j = 0;
                fprintf('%d) Document with id %s NOT FOUND in groundtruth, so its relevance is %d\n', j, docId_j, rel_j);
            end
        end
        
        % if this is not the first document in the result list and there
        % are still documents in the result list, then compute the DCG
        % normally
        if (j ~= 1 && j <= exp_iMaxRows)
            DCG_i(j) = DCG_i(j-1) + rel_j/log2(j);
        % if this is not the first document in the result list and there
        % are no more documents in the result list, the DCG at the current
        % position is the same as previous position
        elseif (j ~=1 && j > exp_iMaxRows)
            DCG_i(j) = DCG_i(j-1);
        else
        % for the first document DCG_i(1) = rel_1
           DCG_i(j) = rel_j;
        end

    end    
    
    % save the DCG function for the j-th experiment
    DCG{1,i} = DCG_i;
end
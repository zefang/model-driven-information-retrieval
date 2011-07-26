function resultSetCellsSystem = makeCellSystem(txt_system, configuration, dataset)
% the output is a cell array
% each entry is a document into the result set
% cell{i,1} docid
% cell{i,2} relevance  (only if indices point to groundtruth ranking, otherwise it's the score which is useless -)


% THIS ARE THE 'COORDINATES' (row/column) TO FIND THE RAW DATA INTO
% THE EXCEL SPREADSHEET

% RESULT SET FROM THE SYSTEM
% A   8,1 (first cell under ranking header)
% B   8,7
% C   8,13
% D   8,19
%
%   RANKING   DOCUMENT_ID   PROJECT_NAME   CLASS_NAME   SCORE

% rowExpA colExpA
% rowExpB colExpB
% ...
% rowGround colGround
indices = zeros(configuration.experiments_number,2);

% The ingestion of indices should be done in a better way
% How to pass the indeces experiment programmatically
% like configuration.expExpVar_row/col?
if configuration.experiments_number == 4
    indices(1,1) = configuration.expA_row;
    indices(1,2) = configuration.expA_col;

    indices(2,1) = configuration.expB_row;
    indices(2,2) = configuration.expB_col;

    indices(3,1) = configuration.expC_row;
    indices(3,2) = configuration.expC_col;

    indices(4,1) = configuration.expD_row;
    indices(4,2) = configuration.expD_col;
else
    indices(1,1) = configuration.expB_row;
    indices(1,2) = configuration.expB_col;

    indices(2,1) = configuration.expC_row;
    indices(2,2) = configuration.expC_col;
end

resultSetCellsSystem = cell(1,configuration.experiments_number);

% for all experiments
for j=1:configuration.experiments_number
    
    expIndices = indices(j,:);
    row = expIndices(1) - 1;
    col = expIndices(2);
    [maxRow maxCol] = size(txt_system);

    % Compute the number of docs into the result set of the
    % current experiment...

    % ...extract the ranked list of the current exp. (system result)
    ranked_list = txt_system(row+1:maxRow,col+1);
    % ...a logical array -> 1 is the cell is empty
    empty = cellfun(@(x) isempty(x), ranked_list);
    % ...sum where the empty array is 0 (that is, count the non-empty cells)
    numDocs = sum(empty==0);


    % if there are NO docs into result set of the system
    if (numDocs == 0)
        experimentCell = cell(1,1);
    else
        % initialization
        experimentCell = cell(numDocs,1);
    end


    for i = 1:numDocs,
        % if the cell is NOT empty, get the docid
        if(isempty(txt_system{row+i,col+1}) == 0)
            experimentCell{i,1} = txt_system{row+i,col+1};
        end
    end

    resultSetCellsSystem{j} = experimentCell;
    
end
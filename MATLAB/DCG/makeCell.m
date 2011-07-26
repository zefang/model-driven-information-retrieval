function resultSetCells = makeCellSystem(txt_system, txt_groundtruth)
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

% RESULT SET FROM THE GROUNDTRUTH VALIDATION
%     8,1 (first cell under ranking header)
%
%   RANKING   DOCUMENT_ID   PROJECT_NAME   CLASS_NAME   RELEVANCE


% rowExpA colExpA
% rowExpB colExpB
% ...
% rowGround colGround
indices = zeros(5,2);

indices(1,1) = 8;
indices(1,2) = 1;

indices(2,1) = 8;
indices(2,2) = 7;

indices(3,1) = 8;
indices(3,2) = 13;

indices(4,1) = 8;
indices(4,2) = 19;

indices(5,1) = 8;
indices(5,2) = 1;

resultSetCells = cell(1,5);

% for all experiments
for j=1:4
    
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
        experimentCell = cell(numDocs,2);
    end


    for i = 1:numDocs,
        % if the cell is NOT empty, get the docid
        if(isempty(txt_system{row+i,col+1}) == 0)
            experimentCell{i,1} = txt_system{row+i,col+1};
        end

        % if the cell is NOT empty, get the score
        if(isempty(txt_system{row+i,col+4}) == 0)
            experimentCell{i,2} = txt_system{row+i,col+4};
        end
    end

    resultSetCells{j} = experimentCell;
    
end


% for the groundtruth

groundIndices = indices(5,:);


row = groundIndices(1) - 1;
col = groundIndices(2);
[maxRow maxCol] = size(txt_groundtruth);

% Compute the number of docs into the groundtruth

% ...extract the ranked list of the groundtruth
ranked_list = txt_groundtruth(row+1:maxRow,col+1);
% ...a logical array -> 1 is the cell is empty
empty = cellfun(@(x) isempty(x), ranked_list);
% ...sum where the empty array is 0 (that is, count the non-empty cells)
numDocs = sum(empty==0);


% if there are NO docs into result the groundtruth
if (numDocs == 0)
    experimentCell = cell(1,1);
else
    % initialization
    experimentCell = cell(numDocs,2);
end


for i = 1:numDocs,
    % if the cell is NOT empty, get the docid
    if(isempty(txt_groundtruth{row+i,col+1}) == 0)
        experimentCell{i,1} = txt_groundtruth{row+i,col+1};
    end

    % if the cell is NOT empty, get the score
    if(isempty(txt_groundtruth{row+i,col+4}) == 0)
        experimentCell{i,2} = txt_groundtruth{row+i,col+4};
    end
end

resultSetCells{5} = experimentCell;

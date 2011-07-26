function resultSetCellsGroundtruth = makeCellGroundtruth(txt_groundtruth)

% RESULT SET FROM THE GROUNDTRUTH VALIDATION
%     24,8 (first cell under ranking header)
%
%   RANKING   DOCUMENT_ID   DOCUMENT_NAME   RELEVANCE


% rowExpA colExpA
% rowExpB colExpB
% ...
% rowGround colGround
groundIndices = zeros(1,2);

groundIndices(1,1) = 8;
groundIndices(1,2) = 1;

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

resultSetCellsGroundtruth = experimentCell;
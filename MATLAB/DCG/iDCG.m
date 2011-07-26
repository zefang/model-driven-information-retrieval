function iDCG = iDCG(txt_groundtruth, configuration, dataset)
% takes in input the txt version of the excel spreadsheet
% reads ONE spreadsheet (corresponding to one MQINST)
% computes the iDCG for the groundtruth of this MQINS

% groundtruth result set
groundtruth = makeCellGroundtruth(txt_groundtruth, configuration, dataset);
% this check is needed for empty groundtruth
if(isempty(groundtruth{1}) == 1)
    iDCG = 0;
    return;
end

% computes the iDCG for this MQINST

maxRows = size(groundtruth,1);

% for all docs
iDCG = zeros(10,1);
for j=1:10
    rel_j = -1;
    if(j <= maxRows)
        rel_j = groundtruth(j,2);
        rel_j = str2double(rel_j{1});
    end
    
    if (j ~= 1 && rel_j ~= -1)
        iDCG(j) = iDCG(j-1) + rel_j/log2(j);
    end
    
    if (j ~= 1 && rel_j == -1)
        iDCG(j) =  iDCG(j-1);
    end

    if (j == 1)        
    % for the first document: iDCG(1) = rel_1
        iDCG(j) = rel_j;
    end    
end
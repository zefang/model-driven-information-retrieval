function groundtruthPruned = filterWebmlGroundtruth(groundtruth)
% filterWebmlGroundtruth filters the cell array coming from
% makeCellGrountruth.
%
% filterWebmlGrountruth(groundtruth) filters the cell array Nx2 where N is
% the total number of documents into the original excel file containing the
% groundtruth. The output is another cell array of size Mx2 where M is the
% number of documents into the groundtruth with relevance > 0. Notice that
% this filtering is needed by the code that computes PRcurve MeanAP and
% MRR because we need not to have NOT relevant documents into the
% groundtruth.

% compute groundtruth pruned size
relevanceArray = str2num(cell2mat(groundtruth(:,2)));
groundtruthPrunedSize = sum(relevanceArray>0);
% contains groundtruth pruned (without zero relevance docs)
groundtruthPruned = cell(groundtruthPrunedSize,2);

j = 1;
for i=1:size(groundtruth)
    if str2num(groundtruth{i,2}) > 0
        groundtruthPruned(j,:) = groundtruth(i,:);
        j = j + 1;
    end 
end
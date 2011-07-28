function groundtruthPruned = filterWebmlGroundtruth(groundtruth)

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
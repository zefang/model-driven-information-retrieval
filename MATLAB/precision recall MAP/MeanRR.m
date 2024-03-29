function MRR = MeanRR(relevant_sets, system_results)
% Mean Reciprocal Rank (MRR)
% Computes the MRR for a given experiment 
%
% INPUT:
% (1) relevant_sets = a cell array Qx1
% (2) system_results = a cell array Qx1
%
% OUTPUT:
% MRR value for this experiment

Q = size(relevant_sets,1);

% contains the sum of reciprocal 1/firstRelDocRank
reciprocalSum = 0;

% for all queries
for q=1:Q
    % contains the ranking of the first relevant result of query q
    firstRelDocRank = 0;
    % the relevant set for the current query instance
    relevant_set = relevant_sets{q};
    % the system result ranking for the current query instance
    system_result = system_results{q};
    % count the number of docs retrieved
    retrievedDocsNumber = size(system_result,1);
    % for all documents retrieved (for each rank position k)
    for k=1:retrievedDocsNumber
        % check if the current doc in the result set is relevant
        
        % k-th result set document id
        id = system_result{k};

        % find the index of k-th result document into relevant set
        index = find(cellfun(@(x) isequal(x,id), relevant_set(:,1)) == 1);
        
        % if so -> found = true
        if isempty(index) == 0   
            firstRelDocRank = k;
            break;
        end
    end
    
    % if firstRelDocRank is still == 0, then no relevant docs were present
    % in the result set
    if firstRelDocRank == 0
        reciprocalSum = reciprocalSum + 0;
    else
        reciprocalSum = reciprocalSum + ( 1/firstRelDocRank );
    end
    
end

MRR = reciprocalSum/Q;
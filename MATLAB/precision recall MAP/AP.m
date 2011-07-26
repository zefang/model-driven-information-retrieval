function [AP P_k] = AP(relevant_set, system_result)
% write this help


M = size(system_result,1);
N = size(relevant_set,1);

% Average precision
AP = 0;
% Precision at k-th relevant document retrieved
P_k = zeros(10,1);

tp = 0;
fp = 0;
% when starting fn = total # relevant docs
fn = N;

% for each rank position (k)
for k=1:10
    
    % it happens that the result set has LESS than 10 results! -> k > M
    
    % if there is another document in the result set
    if k <= M
        % k-th result set document id
        id = system_result{k};

        % find the index of k-th result document into relevant set
        index = find(cellfun(@(x) isequal(x,id), relevant_set(1:N,1)) == 1);
       
        % if index is empty this means that the document is NOT relevant
        % if(relevant_set{index,2} == 1)
        if isempty(index) == 0
            tp = tp + 1;
            fn = fn - 1;
            P_k(k) = tp/(tp+fp);
        else
            fp = fp + 1;
            P_k(k) = 0;
        end
        
    else
            P_k(k) = 0;
    end
    
    relDocsNumRetrieved = tp;
end

AP = sum(P_k)/relDocsNumRetrieved;
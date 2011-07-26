function [MeanAP APs] = MeanAP(relevant_sets, system_results)
% [MAP AP] = MAP(relevant_set, system_result)
% 
% INPUT(1): relevant_sets -> cell array Qx1 where Q is the total number of queries,
% each cell contains a  cell array Mx2 where M is the total number of docs
% into the dataset; fist column -> docID, second column -> 1/0
% (relevant/not relevant)
% 
% INPUT(2): system_results -> cell array Qx1 where Q is the total number of
% queries; each cell contains the system result for the given query ->
% another cell array -> Mx1 of doc_id where M is the number of doc
% retrieved; system_result is the result set w.r.t. a given query
% 
% OUTPUT(1): MAP -> mean average precision
% OUTPUT(2): APs -> a matrix Qx1, each i-th component contains the AP of the
% i-th query

% num of queries
Q = size(system_results,1);

% mean average precision
MeanAP = 0;

% matrix Qx1 of average precisions
APs = zeros(Q,1);

for i=1:Q
   
    % extract the i-th system result for the i-th query
    system_result_i = system_results{i};
    % extract the i-th relevant set for the i-th query
    relevant_set_i = relevant_sets{i};
    [AP_i P_k_i] = AP(relevant_set_i, system_result_i);
    
    APs(i) = AP_i;
end

MeanAP = sum(APs)/Q;

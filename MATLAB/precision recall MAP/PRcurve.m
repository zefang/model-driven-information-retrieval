function [PRcurve, intPRcurve] = PRcurve(relevant_set, system_result)
% [curve, int_curve] = PRcurve(relevant_set, system_result)
% 
% INPUT:
% relevant_set: cell array Nx1 where N is the number of relevant docs 
% into the dataset. There is only one column, which means that if the 
% document is present into the cell array, THEN it is relevant
%
% system_result: cell array Mx1 of doc_id where M is the number of doc
% retrieved; system_result is the result set w.r.t. a given query
%
% OUTPUT:
% PRcurve -> precision-recall curve
% intPRcurve -> interpolated precision-recall curve


M = size(system_result,1);
N = size(relevant_set,1);
% PRcurve = cell(M,2);
PRcurve = cell(10,2);

tp = 0;
fp = 0;
% when starting fn = total # relevant docs
fn = N;

% for each rank position (k)
% for k=1:M

% PRcurve for each k position from 1 to 10
for k=1:10
    
    % it happens that the result set has LESS than 10 results! -> k > M
    
    % if there is another document in the result set
    if k <= M
        % k-th result set document id
        id = system_result{k};

        % find the index of k-th result document into relevant set
        index = find(cellfun(@(x) isequal(x,id), relevant_set) == 1);

        % if index is empty this means that the document is NOT relevant

        % if(relevant_set{index,2} == 1)
        if isempty(index) == 0
            tp = tp + 1;
            fn = fn - 1;
        else
            fp = fp + 1;
        end
    % it there are NO other documents in the result set, we act as there is
    % another NOT relevant doc
    else
        fp = fp + 1;
    end
    
    PRcurve{k,1} = tp/(tp+fp); % P = relevant items retrieved / retrieved items (k)
    PRcurve{k,2} = tp/(tp+fn); % R = relevant items retrieved / relevant itemes
end

% figure
% plot(cell2mat(PRcurve(1:M,2)),cell2mat(PRcurve(1:M,1)));
% title('precision-recall curve');
% xlabel('recall')
% ylabel('precision')


% intPRcurve = cell(10,2);
% % recall is the same as PRcurve
% intPRcurve(1:10,2) = PRcurve(1:10,2);
% 
% Pcurve = cell2mat(PRcurve(1:10,1));
% % compute interpolated precision
% for k=1:10
%      % initialize interpolation
%      if(k == 1)
%          intPRcurve{1,1} = Pcurve(1);
%      else
%          intPRcurve{k,1} = max(Pcurve(k:10));
%      end
%       
% end

intPRcurve = cell(11,2);
% recall is the same as PRcurve, plus it is added the recall level 0
% which corrensponds to index 1
intPRcurve{1,2} = 0;
intPRcurve(2:11,2) = PRcurve(1:10,2);

Pcurve = cell2mat(PRcurve(1:10,1));
% initialize interpolation
intPRcurve{1,1} = Pcurve(1);
% compute interpolated precision
for k=2:11
    intPRcurve{k,1} = max(Pcurve(k-1:10));    
end

% figure
% plot(cell2mat(intPRcurve(1:M,2)),cell2mat(intPRcurve(1:M,1)));
% title('interpolated precision-recall curve');
% xlabel('recall')
% ylabel('int. precision')
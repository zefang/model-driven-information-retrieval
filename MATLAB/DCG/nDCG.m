function nDCG = nDCG(DCG, iDCG, configuration, mqinst_num)

num_exp = configuration.experiments_number;
num_instances = mqinst_num;
nDCG = cell(10,4);

% for all instances
for i=1:num_instances
    iDCG_i = iDCG{i};
    % for all experiments
    for j=1:num_exp
        DCG_ij = DCG{i}{j};
        nDCG_ij = DCG_ij ./ iDCG_i;
        nDCG{i,j} = nDCG_ij;
    end
end
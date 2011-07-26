function plotDCG(DCGMean, iDCGMean, nDCGMean, mq_label, dataset)
% input:
% 1) DCGMean
% 2) iDCGMean
% 3) meta query label
% 4) dataset ('webml'/'uml')

% UML dataset plotting code
if strcmp(dataset,'uml')

    % DCG at rank position x (from 1 to 10)
    x = 1:10;

    DCG = figure;
    
    plot(x,DCGMean{1,1},x,DCGMean{1,2},x,DCGMean{1,3},x,DCGMean{1,4},x,iDCGMean);
    hleg = legend('DCG Experiment A', 'DCG Experiment B', 'DCG Experiment C', 'DCG Experiment D', 'iDCG', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'UML: DCG/iDCG plot for:', mq_label});
    set(t,'FontSize',10);

    xlabel('rank position x');
    ylabel('DCG/iDCG at rank position x')

    filename = 'UML-DCG';
    print(DCG, '-dpng', filename);
    
    % nDCG at rank position x (from 1 to 10)
    nDCG = figure;

    plot(x,nDCGMean{1,1},x,nDCGMean{1,2},x,nDCGMean{1,3},x,nDCGMean{1,4});
    hleg = legend('nDCG Experiment A', 'nDCG Experiment B', 'nDCG Experiment C', 'nDCG Experiment D', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'UML: nDCG plot for:', mq_label});
    set(t,'FontSize',10);

    xlabel('rank position x');
    ylabel('nDCG at rank position x')
    
    filename = 'UML-nDCG';
    print(nDCG, '-dpng', filename);

% WebML dataset plotting code
else
    
    % DCG at rank position x (from 1 to 10)
    x = 1:10;

    DCG = figure;
    
    plot(x,DCGMean{1,1},x,DCGMean{1,2},x,iDCGMean);
    hleg = legend('DCG Experiment B', 'DCG Experiment C', 'iDCG', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'WebML: DCG/iDCG plot'});
    set(t,'FontSize',10);

    xlabel('rank position x');
    ylabel('DCG/iDCG at rank position x')

    filename = 'WebML-DCG';
    print(DCG, '-dpng', filename);
    
    % nDCG at rank position x (from 1 to 10)
    nDCG = figure;

    plot(x,nDCGMean{1,1},x,nDCGMean{1,2});
    hleg = legend('nDCG Experiment B', 'nDCG Experiment C', 'Location', 'NorthEastOutside');

    set(hleg,'FontAngle','italic','TextColor',[.3 .2 .1]);

    t = title({'WebML: nDCG plot'});
    set(t,'FontSize',10);

    xlabel('rank position x');
    ylabel('nDCG at rank position x')
    
    filename = 'WebML-nDCG';
    print(nDCG, '-dpng', filename);
    
end
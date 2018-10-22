%  ============================================================
%  ============================== Formose reaction
%  ============================================================
if WhichPart == 0
    ssRandomSeed = 'shuffle';
    MaxL = 5; % always  max+1
    BigBarrierE = 100;
    LitBarrierE = 10;
    
    IsInfFlow = 1;
    
    CalcuKinetics = 1; % do not calculate when 0
    TRY = 1000000;
    Range = 300 : -10 : -1500;
    DtnRecord = 1; % 1
    Time = 1e5;
    
    
elseif WhichPart == 1
    rxn(1, 2) =  1;
    rxn(1, 3) =  1;
    rxn(2, 2) = -1;
    
    sfoodBag = [1];
    n(1) = 1000;
    n(2) = 1;
    
    n(MaxL) = 1e6;

    
elseif WhichPart == 12
%     Gnum(1:4) = [-160  -810  -1140  -1470];
    
    
elseif WhichPart == 2
    bool = (t < Time) && (n(2) < 1e4) && (tn < 1e4);% 1e4

    
elseif WhichPart == 3
%     recordrate(tncount, 1) = rate(3); % MaxL = 11
%     recordrate(tncount, 2) = rate(5);
%     recordrate(tncount, 3) = rate(22);

%     recordrate(tncount, 1) = rate(3); % MaxL = 7
%     recordrate(tncount, 2) = rate(5);
%     recordrate(tncount, 3) = rate(14);
    
    
elseif WhichPart == 4

    showTrange = 1 : length(recordT);
    figure
    subplot(211)
    plot(recordT(showTrange), recordN(showTrange, 1), 'b-')
    hold on
    plot(recordT(showTrange), recordN(showTrange, 2), 'r-')
    plot(recordT(showTrange), recordN(showTrange, 3), 'g-')
    plot(recordT(showTrange), recordN(showTrange, 4), 'b.')
    axis([0 recordT(end) 0 inf])
    ylabel('No. Molecules')
    subplot(212)
    semilogy(recordT(showTrange), recordN(showTrange, 1), 'b-')
    hold on
    semilogy(recordT(showTrange), recordN(showTrange, 2), 'r-')
    semilogy(recordT(showTrange), recordN(showTrange, 3), 'g-')
    semilogy(recordT(showTrange), recordN(showTrange, 4), 'b.')
    axis([0 recordT(end) 1 inf])
    xlabel('Time, s')
    ylabel('No. Molecules')

    DrawReacNet(nOccur, MaxL) % GREEN is systhesis
end
%  ============================================================
%  ============================== Citric acid cycle
%  ============================================================
if WhichPart == 0
    ssRandomSeed = 'shuffle'; % 'shuffle'
    MaxL = 7; % always  max+1
    BigBarrierE = 100;
    LitBarrierE = 10;
    
    IsInfFlow = 1;
    
    CalcuKinetics = 1; % do not calculate when 0
    TRY = 1000000;
    Range = 300 : -10 : -1500;
    DtnRecord = 1;
    Time = 1;
    
    
elseif WhichPart == 1
    rxn(1, 4) = -1;
    rxn(1, 5) = -1;
    rxn(2, 4) =  1;
    
    sfoodBag = [2];
    n(2) = 1000;
    n(4) = 1;
    
    n(MaxL) = 1e6;
    
elseif WhichPart == 12
%     Gnum(1:6) = [-780, -500, -490, -190, -830, -900];

    
elseif WhichPart == 2
    bool = (t < Time) && (n(1) < 1e4);

    
elseif WhichPart == 3
%     recordrate(tncount, 1) = rate(8); % if MaxL == 11
%     recordrate(tncount, 2) = rate(10);
%     recordrate(tncount, 3) = rate(25);
    
%     recordrate(tncount, 1) = rate(8); % if MaxL == 7
%     recordrate(tncount, 2) = rate(10);
%     recordrate(tncount, 3) = rate(17);
    
    
elseif WhichPart == 4
    showTrange = 1 : length(recordT);
    figure
    subplot(211)
    plot(recordT(showTrange), recordN(showTrange, 1), 'b-')
    hold on
    plot(recordT(showTrange), recordN(showTrange, 2), 'r-')
    plot(recordT(showTrange), recordN(showTrange, 4), 'g-')
    plot(recordT(showTrange), recordN(showTrange, 5), 'b.')
    plot(recordT(showTrange), recordN(showTrange, 6), 'r.')
    axis([0 recordT(end) 0 inf])
    ylabel('No. Molecules')
    subplot(212)
    semilogy(recordT(showTrange), recordN(showTrange, 1), 'b-')
    hold on
    semilogy(recordT(showTrange), recordN(showTrange, 2), 'r-')
    semilogy(recordT(showTrange), recordN(showTrange, 4), 'g-')
    semilogy(recordT(showTrange), recordN(showTrange, 5), 'b.')
    semilogy(recordT(showTrange), recordN(showTrange, 6), 'r.')
    axis([0 recordT(end) 1 inf])
    xlabel('Time, s')
    ylabel('No. Molecules')

    DrawReacNet(nOccur, MaxL) % GREEN is systhesis
end
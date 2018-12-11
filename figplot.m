function figplot(X,idx)
t=max(idx)
range = min(idx):max(idx);
res = [range; histc(idx(:)', range)]'; % res has values in first column, counts in second.
sortedres = sortrows(res, 2);

figure;
for i=t:-1:1
scatter(X(idx==sortedres(i),1),X(idx==sortedres(i),2),12,'filled')
hold on
end
xlabel('Dim 1')
ylabel('Dim 2')
title('Clustering Results at OPT Optimised Parameters')
legend({'Cluster 1','Cluster 2','Cluster 3'})
set(gca,'FontSize',16)
set(gcf, 'Position', [300, 0, 800, 850])

hold off
end
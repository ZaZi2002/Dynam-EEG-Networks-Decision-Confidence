% Plotting connectivity graph

function plotConnectivity(graph,names,trialNum,windowNum,titleIndex,Title)

    h = heatmap(squeeze(graph));

    h.Colormap = parula;
    %clim([0.25, 0.33]);

    % h.XDisplayLabels = repmat({''}, size(graph, 2), 1);  % Hide X-axis labels
    % h.YDisplayLabels = repmat({''}, size(graph, 1), 1);  % Hide Y-axis labels

    % imagesc(squeeze(graph));
    % 
    % colorbar;

    % pcolor(squeeze(graph).');
    % 
    % colorbar;

    % c = colorbar;
    % %c.Ticks = [0.3,0.32125,0.3425,0.36375,0.385,0.40625,0.4275,0.44875,0.47];
    % c.Ticks = [0.3,0.315,0.33,0.345,0.36,0.375,0.39,0.405,0.42];% Set ticks at 0, 0.5, and 1
    % c.TickLabels = {'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8'}; % Set tick labels
    % clim([0.3, 0.42]);
    
    % if titleIndex == 1
    %     title('2D Plot of connectivity graph of trial '+ string(trialNum) + ' and window ' + string(windowNum));
    % else
    %     title(string(Title) + ' ' + string(windowNum));
    % end
    % xlabel('Sources');
    ylabel('Sources');
    
    % set(gca, 'XTick', 1:68, 'XTickLabel', names, 'YTick', 1:68, 'YTickLabel', names);
    % h.XDisplayLabels = names;  % Custom labels for X-axis
    % h.YDisplayLabels = names;

    
end
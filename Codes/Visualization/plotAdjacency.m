% Plotting adjacency graph

function plotAdjacency(graph,names,trialNum,windowNum,titleIndex,Title,threshold)

    graph_binary = zeros(68,68);
    for i = 1:68
        for j = 1:68
            if (graph(1,i,j) > threshold)
                graph_binary(i,j) = graph(1,i,j);
            else
                graph_binary(i,j) = 0;
            end
        end
    end
    imagesc(squeeze(graph_binary));
    
    colorbar;
    % c = colorbar;
    % c.Ticks = [0,0.2,0.4,0.6,0.8,1]; % Set ticks at 0, 0.5, and 1
    % c.TickLabels = {'0','0.2','0.4','0.6','0.8','1'}; % Set tick labels
    % clim([0, 1]);
    
    if titleIndex == 1
        title('2D Plot of connectivity graph of trial '+ string(trialNum) + ' and window ' + string(windowNum));
    else
        title(string(Title) + ' ' + string(windowNum));
    end
    xlabel('Sources');
    ylabel('Sources');
    
    set(gca, 'XTick', 1:68, 'XTickLabel', names, 'YTick', 1:68, 'YTickLabel', names);

    
end
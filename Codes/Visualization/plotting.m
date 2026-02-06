% Plotting
clc
%clear

resLockedGraph = load('Graphs_response.mat');
blobLockedGraph = load('Graphs_firstBlob.mat');
forwardGraphs = load("Graphs_forward.mat");
Desikan = load("scout_Desikan-Killiany_68.mat");

source_names = Label;


%%
pause_time = 2;
for i = 1:10
    windnum = i;
    plotConnectivity(forwardGraphs(windnum,:,:),source_names, ...
        EEG.Trials.Windows.forwindowTrials(windnum),EEG.Trials.Windows.number_Window_Trial_forward(windnum),1,'');
    pause(pause_time);
end

%% Plotting response locked graphs i
graph_num = 2;
pause_time = 3;
plotConnectivity(resLockedGraph.all(graph_num,:,:),source_names,0,graph_num,0,'all')
pause(pause_time);
plotConnectivity(resLockedGraph.delta(graph_num,:,:),source_names,0,graph_num,0,'delta')
pause(pause_time);
plotConnectivity(resLockedGraph.theta(graph_num,:,:),source_names,0,graph_num,0,'theta')
pause(pause_time);
plotConnectivity(resLockedGraph.alpha(graph_num,:,:),source_names,0,graph_num,0,'alpha')
pause(pause_time);
plotConnectivity(resLockedGraph.beta(graph_num,:,:),source_names,0,graph_num,0,'beta')
pause(pause_time);
plotConnectivity(resLockedGraph.lowGamma(graph_num,:,:),source_names,0,graph_num,0,'lowGamma')
pause(pause_time);
%plotConnectivity(resLockedGraph_highGamma(graph_num,:,:),EEG.Trials.channelNames,0,0,0,'highGamma')
%pause(pause_time);

%% Plotting blob locked graphs i
graph_num = 3;
pause_time = 3;
plotConnectivity(blobLockedGraph.all(graph_num,:,:),source_names,0,graph_num,0,'all')
pause(pause_time);
plotConnectivity(blobLockedGraph.delta(graph_num,:,:),source_names,0,graph_num,0,'delta')
pause(pause_time);
plotConnectivity(blobLockedGraph.theta(graph_num,:,:),source_names,0,graph_num,0,'theta')
pause(pause_time);
plotConnectivity(blobLockedGraph.alpha(graph_num,:,:),source_names,0,graph_num,0,'alpha')
pause(pause_time);
plotConnectivity(blobLockedGraph.beta(graph_num,:,:),source_names,0,graph_num,0,'beta')
pause(pause_time);
plotConnectivity(blobLockedGraph.lowGamma(graph_num,:,:),source_names,0,graph_num,0,'lowGamma')
pause(pause_time);
%plotConnectivity(blobLockedGraph_highGamma(graph_num,:,:),EEG.Trials.channelNames,0,0,0,'highGamma')
%pause(pause_time);

%% Plotting response locked adjacancy matrix i
graph_num = 1;
pause_time = 2;
threshold = 0.6;
plotAdjacency(resLockedGraph(graph_num,:,:),EEG.Trials.channelNames,"All",threshold)
pause(pause_time);
plotAdjacency(resLockedGraph_delta(graph_num,:,:),EEG.Trials.channelNames,"Delta",threshold)
pause(pause_time);
plotAdjacency(resLockedGraph_theta(graph_num,:,:),EEG.Trials.channelNames,"Theta",threshold)
pause(pause_time);
plotAdjacency(resLockedGraph_alpha(graph_num,:,:),EEG.Trials.channelNames,"Alpha",threshold)
pause(pause_time);
plotAdjacency(resLockedGraph_beta(graph_num,:,:),EEG.Trials.channelNames,"Beta",threshold)
pause(pause_time);
plotAdjacency(resLockedGraph_lowGamma(graph_num,:,:),EEG.Trials.channelNames,"LowGamma",threshold)
pause(pause_time);
% plotAdjacency(resLockedGraph_highGamma(graph_num,:,:),EEG.Trials.channelNames,"HighGamma",threshold)
% pause(pause_time);

%% Plotting blob locked adjacancy matrix i
graph_num = 1;
pause_time = 2;
threshold = 0.05;
plotAdjacency(blobLockedGraph(graph_num,:,:),EEG.Trials.channelNames,"All",threshold)
pause(pause_time);
plotAdjacency(blobLockedGraph_delta(graph_num,:,:),EEG.Trials.channelNames,"Delta",threshold)
pause(pause_time);
plotAdjacency(blobLockedGraph_theta(graph_num,:,:),EEG.Trials.channelNames,"Theta",threshold)
pause(pause_time);
plotAdjacency(blobLockedGraph_alpha(graph_num,:,:),EEG.Trials.channelNames,"Alpha",threshold)
pause(pause_time);
plotAdjacency(blobLockedGraph_beta(graph_num,:,:),EEG.Trials.channelNames,"Beta",threshold)
pause(pause_time);
plotAdjacency(blobLockedGraph_lowGamma(graph_num,:,:),EEG.Trials.channelNames,"LowGamma",threshold)
pause(pause_time);
plotAdjacency(blobLockedGraph_highGamma(graph_num,:,:),EEG.Trials.channelNames,"HighGamma",threshold)
pause(pause_time);

%% Plotting all blob locked adjacancy matrix i
graph_num = 7;
pause_time = 3;
plotConnectivity(Graphs(1,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'all')
pause(pause_time);
plotConnectivity(Graphs(2,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'delta')
pause(pause_time);
plotConnectivity(Graphs(3,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'theta')
pause(pause_time);
plotConnectivity(Graphs(4,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'alpha')
pause(pause_time);
plotConnectivity(Graphs(5,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'beta')
pause(pause_time);
plotConnectivity(Graphs(6,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'lowGamma')
pause(pause_time);
% plotConnectivity(Graphs(7,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'highGamma')
% pause(pause_time);

%% Plotting all blob locked adjacancy matrix i
graph_num = 5;
pause_time = 2;
plotConnectivity(Graphs_SE(1,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'all')
pause(pause_time);
plotConnectivity(Graphs_SE(2,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'delta')
pause(pause_time);
plotConnectivity(Graphs_SE(3,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'theta')
pause(pause_time);
plotConnectivity(Graphs_SE(4,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'alpha')
pause(pause_time);
plotConnectivity(Graphs_SE(5,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'beta')
pause(pause_time);
plotConnectivity(Graphs_SE(6,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'lowGamma')
pause(pause_time);
% plotConnectivity(Graphs_SE(7,graph_num,:,:),EEG.Trials.channelNames,0,0,0,'highGamma')
% pause(pause_time);

%%
pause_time = 2;
for i = 1:10
    plotConnectivity(forwardGraphs.lowGamma(i,:,:),source_names,0,i,0,'LowGamma');
    pause(pause_time);
end

%%
clc
pause_time = 2;
threshold = 0.7*max(max(max(forwardGraphs.lowGamma)));

A = reshape(forwardGraphs.lowGamma,1,[]);
A = sort(A,2,"descend");
threshold = A(0.2*size(A,2));

for i = 1:10
    A = reshape(forwardGraphs.beta(i,:,:),1,[]);
    A = sort(A,2,"descend");
    threshold = A(int32(0.15*size(A,2)))

    plotAdjacency(forwardGraphs.beta(i,:,:),source_names,0,i,0,"beta",threshold)
    pause(pause_time);
end


% Plottings based on blob
clc

%% Blob based plots flex and integ
num_blobs = 7;
blobs = 3:1:9;
flex_network = zeros(num_blobs,1);
for i = 1:15
    if i >= 4 
        flex_network(1,i) = mean(features_3(i+1).flexibility_network.beta);
        flex_network(2,i) = mean(features_4(i+1).flexibility_network.beta);
        flex_network(3,i) = mean(features_5(i+1).flexibility_network.beta);
        flex_network(4,i) = mean(features_6(i+1).flexibility_network.beta);
        flex_network(5,i) = mean(features_7(i+1).flexibility_network.beta);
        flex_network(6,i) = mean(features_8(i+1).flexibility_network.beta);
        flex_network(7,i) = mean(features_9(i+1).flexibility_network.beta);
    else
        flex_network(1,i) = mean(features_3(i).flexibility_network.beta);
        flex_network(2,i) = mean(features_4(i).flexibility_network.beta);
        flex_network(3,i) = mean(features_5(i).flexibility_network.beta);
        flex_network(4,i) = mean(features_6(i).flexibility_network.beta);
        flex_network(5,i) = mean(features_7(i).flexibility_network.beta);
        flex_network(6,i) = mean(features_8(i).flexibility_network.beta);
        flex_network(7,i) = mean(features_9(i).flexibility_network.beta);
    end
end
plotter(blobs,flex_network,'flexibility based on blobs beta' ...
    ,'Number of Blobs','Flexibility',15,3,9)

for i = 1:15
    if i >= 4 
        flex_network(1,i) = mean(features_3(i+1).flexibility_network.lowGamma);
        flex_network(2,i) = mean(features_4(i+1).flexibility_network.lowGamma);
        flex_network(3,i) = mean(features_5(i+1).flexibility_network.lowGamma);
        flex_network(4,i) = mean(features_6(i+1).flexibility_network.lowGamma);
        flex_network(5,i) = mean(features_7(i+1).flexibility_network.lowGamma);
        flex_network(6,i) = mean(features_8(i+1).flexibility_network.lowGamma);
        flex_network(7,i) = mean(features_9(i+1).flexibility_network.lowGamma);
    else
        flex_network(1,i) = mean(features_3(i).flexibility_network.lowGamma);
        flex_network(2,i) = mean(features_4(i).flexibility_network.lowGamma);
        flex_network(3,i) = mean(features_5(i).flexibility_network.lowGamma);
        flex_network(4,i) = mean(features_6(i).flexibility_network.lowGamma);
        flex_network(5,i) = mean(features_7(i).flexibility_network.lowGamma);
        flex_network(6,i) = mean(features_8(i).flexibility_network.lowGamma);
        flex_network(7,i) = mean(features_9(i).flexibility_network.lowGamma);
    end
end
plotter(blobs,flex_network,'flexibility based on blobs gamma' ...
    ,'Number of Blobs','Flexibility',15,3,9)


integ_network = zeros(num_blobs,1);
for i = 1:15
    if i >= 4 
        integ_network(1,i) = mean(features_3(i+1).integration_network.beta);
        integ_network(2,i) = mean(features_4(i+1).integration_network.beta);
        integ_network(3,i) = mean(features_5(i+1).integration_network.beta);
        integ_network(4,i) = mean(features_6(i+1).integration_network.beta);
        integ_network(5,i) = mean(features_7(i+1).integration_network.beta);
        integ_network(6,i) = mean(features_8(i+1).integration_network.beta);
        integ_network(7,i) = mean(features_9(i+1).integration_network.beta);
    else
        integ_network(1,i) = mean(features_3(i).integration_network.beta);
        integ_network(2,i) = mean(features_4(i).integration_network.beta);
        integ_network(3,i) = mean(features_5(i).integration_network.beta);
        integ_network(4,i) = mean(features_6(i).integration_network.beta);
        integ_network(5,i) = mean(features_7(i).integration_network.beta);
        integ_network(6,i) = mean(features_8(i).integration_network.beta);
        integ_network(7,i) = mean(features_9(i).integration_network.beta);
    end
end
plotter(blobs,integ_network,'integration based on blobs beta' ...
    ,'Number of Blobs','Integration',15,3,9)

for i = 1:15
    if i >= 4 
        integ_network(1,i) = mean(features_3(i+1).integration_network.lowGamma);
        integ_network(2,i) = mean(features_4(i+1).integration_network.lowGamma);
        integ_network(3,i) = mean(features_5(i+1).integration_network.lowGamma);
        integ_network(4,i) = mean(features_6(i+1).integration_network.lowGamma);
        integ_network(5,i) = mean(features_7(i+1).integration_network.lowGamma);
        integ_network(6,i) = mean(features_8(i+1).integration_network.lowGamma);
        integ_network(7,i) = mean(features_9(i+1).integration_network.lowGamma);
    else
        integ_network(1,i) = mean(features_3(i).integration_network.lowGamma);
        integ_network(2,i) = mean(features_4(i).integration_network.lowGamma);
        integ_network(3,i) = mean(features_5(i).integration_network.lowGamma);
        integ_network(4,i) = mean(features_6(i).integration_network.lowGamma);
        integ_network(5,i) = mean(features_7(i).integration_network.lowGamma);
        integ_network(6,i) = mean(features_8(i).integration_network.lowGamma);
        integ_network(7,i) = mean(features_9(i).integration_network.lowGamma);
    end
end
plotter(blobs,integ_network,'integration based on blobs gamma' ...
    ,'Number of Blobs','Integration',15,3,9)

%% Blob based plots clustering coef
num_blobs = 7;
blobs = 3:1:9;
clust_coef = zeros(num_blobs,1);
for i = 1:15
    if i >= 4 
        clust_coef(1,i) = mean(features_3(i+1).efficiency.beta);
        clust_coef(2,i) = mean(features_4(i+1).efficiency.beta);
        clust_coef(3,i) = mean(features_5(i+1).efficiency.beta);
        clust_coef(4,i) = mean(features_6(i+1).efficiency.beta);
        clust_coef(5,i) = mean(features_7(i+1).efficiency.beta);
        clust_coef(6,i) = mean(features_8(i+1).efficiency.beta);
        clust_coef(7,i) = mean(features_9(i+1).efficiency.beta);
    else
        clust_coef(1,i) = mean(features_3(i).efficiency.beta);
        clust_coef(2,i) = mean(features_4(i).efficiency.beta);
        clust_coef(3,i) = mean(features_5(i).efficiency.beta);
        clust_coef(4,i) = mean(features_6(i).efficiency.beta);
        clust_coef(5,i) = mean(features_7(i).efficiency.beta);
        clust_coef(6,i) = mean(features_8(i).efficiency.beta);
        clust_coef(7,i) = mean(features_9(i).efficiency.beta);
    end
end
plotter(blobs,clust_coef,'clust coef based on blobs beta' ...
    ,'Blobs','clust coef of network',15,3,9)
%%
for i = 1:15
    if i >= 4 
        clust_coef(1,i) = mean(features_3(i+1).clustering_coef.lowGamma);
        clust_coef(2,i) = mean(features_4(i+1).clustering_coef.lowGamma);
        clust_coef(3,i) = mean(features_5(i+1).clustering_coef.lowGamma);
        clust_coef(4,i) = mean(features_6(i+1).clustering_coef.lowGamma);
        clust_coef(5,i) = mean(features_7(i+1).clustering_coef.lowGamma);
        clust_coef(6,i) = mean(features_8(i+1).clustering_coef.lowGamma);
        clust_coef(7,i) = mean(features_9(i+1).clustering_coef.lowGamma);
    else
        clust_coef(1,i) = mean(features_3(i).clustering_coef.lowGamma);
        clust_coef(2,i) = mean(features_4(i).clustering_coef.lowGamma);
        clust_coef(3,i) = mean(features_5(i).clustering_coef.lowGamma);
        clust_coef(4,i) = mean(features_6(i).clustering_coef.lowGamma);
        clust_coef(5,i) = mean(features_7(i).clustering_coef.lowGamma);
        clust_coef(6,i) = mean(features_8(i).clustering_coef.lowGamma);
        clust_coef(7,i) = mean(features_9(i).clustering_coef.lowGamma);
    end
end
plotter(blobs,clust_coef,'clust coef based on blobs gamma' ...
    ,'Blobs','clust coef of network',15,3,9)

%% Blob based plots global efficiency
num_blobs = 7;
blobs = 3:1:9;
global_effic = zeros(num_blobs,1);
for i = 1:15
    if i >= 4 
        global_effic(1,i) = mean(features_3(i+1).global_effic.beta);
        global_effic(2,i) = mean(features_4(i+1).global_effic.beta);
        global_effic(3,i) = mean(features_5(i+1).global_effic.beta);
        global_effic(4,i) = mean(features_6(i+1).global_effic.beta);
        global_effic(5,i) = mean(features_7(i+1).global_effic.beta);
        global_effic(6,i) = mean(features_8(i+1).global_effic.beta);
        global_effic(7,i) = mean(features_9(i+1).global_effic.beta);
    else
        global_effic(1,i) = mean(features_3(i).global_effic.beta);
        global_effic(2,i) = mean(features_4(i).global_effic.beta);
        global_effic(3,i) = mean(features_5(i).global_effic.beta);
        global_effic(4,i) = mean(features_6(i).global_effic.beta);
        global_effic(5,i) = mean(features_7(i).global_effic.beta);
        global_effic(6,i) = mean(features_8(i).global_effic.beta);
        global_effic(7,i) = mean(features_9(i).global_effic.beta);
    end
end
plotter(blobs,global_effic,'Global effic based on blobs beta' ...
    ,'Blobs','Global effic of network',15,3,9)
%%
for i = 1:15
    if i >= 4 
        global_effic(1,i) = mean(features_3(i+1).global_effic.lowGamma);
        global_effic(2,i) = mean(features_4(i+1).global_effic.lowGamma);
        global_effic(3,i) = mean(features_5(i+1).global_effic.lowGamma);
        global_effic(4,i) = mean(features_6(i+1).global_effic.lowGamma);
        global_effic(5,i) = mean(features_7(i+1).global_effic.lowGamma);
        global_effic(6,i) = mean(features_8(i+1).global_effic.lowGamma);
        global_effic(7,i) = mean(features_9(i+1).global_effic.lowGamma);
    else
        global_effic(1,i) = mean(features_3(i).global_effic.lowGamma);
        global_effic(2,i) = mean(features_4(i).global_effic.lowGamma);
        global_effic(3,i) = mean(features_5(i).global_effic.lowGamma);
        global_effic(4,i) = mean(features_6(i).global_effic.lowGamma);
        global_effic(5,i) = mean(features_7(i).global_effic.lowGamma);
        global_effic(6,i) = mean(features_8(i).global_effic.lowGamma);
        global_effic(7,i) = mean(features_9(i).global_effic.lowGamma);
    end
end
plotter(blobs,global_effic,'Global effic based on blobs gamma' ...
    ,'Blobs','Global effic of network',15,3,9)

%% Blob based plots characteristic path length
num_blobs = 7;
blobs = 3:1:9;
char_pl = zeros(num_blobs,1);
for i = 1:15
    if i >= 4 
        char_pl(1,i) = mean(features_3(i+1).char_pl.beta);
        char_pl(2,i) = mean(features_4(i+1).char_pl.beta);
        char_pl(3,i) = mean(features_5(i+1).char_pl.beta);
        char_pl(4,i) = mean(features_6(i+1).char_pl.beta);
        char_pl(5,i) = mean(features_7(i+1).char_pl.beta);
        char_pl(6,i) = mean(features_8(i+1).char_pl.beta);
        char_pl(7,i) = mean(features_9(i+1).char_pl.beta);
    else
        char_pl(1,i) = mean(features_3(i).char_pl.beta);
        char_pl(2,i) = mean(features_4(i).char_pl.beta);
        char_pl(3,i) = mean(features_5(i).char_pl.beta);
        char_pl(4,i) = mean(features_6(i).char_pl.beta);
        char_pl(5,i) = mean(features_7(i).char_pl.beta);
        char_pl(6,i) = mean(features_8(i).char_pl.beta);
        char_pl(7,i) = mean(features_9(i).char_pl.beta);
    end
end
plotter(blobs,char_pl,'char pl based on blobs beta' ...
    ,'Blobs','char pl of network',15,3,9)
%%
for i = 1:15
    if i >= 4 
        char_pl(1,i) = mean(features_3(i+1).char_pl.lowGamma);
        char_pl(2,i) = mean(features_4(i+1).char_pl.lowGamma);
        char_pl(3,i) = mean(features_5(i+1).char_pl.lowGamma);
        char_pl(4,i) = mean(features_6(i+1).char_pl.lowGamma);
        char_pl(5,i) = mean(features_7(i+1).char_pl.lowGamma);
        char_pl(6,i) = mean(features_8(i+1).char_pl.lowGamma);
        char_pl(7,i) = mean(features_9(i+1).char_pl.lowGamma);
    else
        char_pl(1,i) = mean(features_3(i).char_pl.lowGamma);
        char_pl(2,i) = mean(features_4(i).char_pl.lowGamma);
        char_pl(3,i) = mean(features_5(i).char_pl.lowGamma);
        char_pl(4,i) = mean(features_6(i).char_pl.lowGamma);
        char_pl(5,i) = mean(features_7(i).char_pl.lowGamma);
        char_pl(6,i) = mean(features_8(i).char_pl.lowGamma);
        char_pl(7,i) = mean(features_9(i).char_pl.lowGamma);
    end
end
plotter(blobs,char_pl,'char pl based on blobs gamma' ...
    ,'Blobs','char pl of network',15,3,9)

%% Blob based plots local efficiency
num_blobs = 7;
blobs = 3:1:9;
local_effic = zeros(num_blobs,1);
for i = 1:15
    if i >= 4 
        local_effic(1,i) = mean(mean(features_3(i+1).local_effic.beta));
        local_effic(2,i) = mean(mean(features_4(i+1).local_effic.beta));
        local_effic(3,i) = mean(mean(features_5(i+1).local_effic.beta));
        local_effic(4,i) = mean(mean(features_6(i+1).local_effic.beta));
        local_effic(5,i) = mean(mean(features_7(i+1).local_effic.beta));
        local_effic(6,i) = mean(mean(features_8(i+1).local_effic.beta));
        local_effic(7,i) = mean(mean(features_9(i+1).local_effic.beta));
    else
        local_effic(1,i) = mean(mean(features_3(i).local_effic.beta));
        local_effic(2,i) = mean(mean(features_4(i).local_effic.beta));
        local_effic(3,i) = mean(mean(features_5(i).local_effic.beta));
        local_effic(4,i) = mean(mean(features_6(i).local_effic.beta));
        local_effic(5,i) = mean(mean(features_7(i).local_effic.beta));
        local_effic(6,i) = mean(mean(features_8(i).local_effic.beta));
        local_effic(7,i) = mean(mean(features_9(i).local_effic.beta));
    end
end
plotter(blobs,local_effic,'local effic based on blobs beta' ...
    ,'Blobs','local effic of network',15,3,9)
%%
for i = 1:15
    if i >= 4 
        local_effic(1,i) = mean(mean(features_3(i+1).local_effic.lowGamma));
        local_effic(2,i) = mean(mean(features_4(i+1).local_effic.lowGamma));
        local_effic(3,i) = mean(mean(features_5(i+1).local_effic.lowGamma));
        local_effic(4,i) = mean(mean(features_6(i+1).local_effic.lowGamma));
        local_effic(5,i) = mean(mean(features_7(i+1).local_effic.lowGamma));
        local_effic(6,i) = mean(mean(features_8(i+1).local_effic.lowGamma));
        local_effic(7,i) = mean(mean(features_9(i+1).local_effic.lowGamma));
    else
        local_effic(1,i) = mean(mean(features_3(i).local_effic.lowGamma));
        local_effic(2,i) = mean(mean(features_4(i).local_effic.lowGamma));
        local_effic(3,i) = mean(mean(features_5(i).local_effic.lowGamma));
        local_effic(4,i) = mean(mean(features_6(i).local_effic.lowGamma));
        local_effic(5,i) = mean(mean(features_7(i).local_effic.lowGamma));
        local_effic(6,i) = mean(mean(features_8(i).local_effic.lowGamma));
        local_effic(7,i) = mean(mean(features_9(i).local_effic.lowGamma));
    end
end
plotter(blobs,local_effic,'local effic based on blobs gamma' ...
    ,'Blobs','local effic of network',15,3,9)

%% Blob based plots small-worldness
num_blobs = 7;
blobs = 3:1:9;
small_world = zeros(num_blobs,1);
small_world(1) = mean(features_3.small_world.beta);
small_world(2) = mean(features_4.small_world.beta);
small_world(3) = mean(features_5.small_world.beta);
small_world(4) = mean(features_6.small_world.beta);
small_world(5) = mean(features_7.small_world.beta);
small_world(6) = mean(features_8.small_world.beta);
small_world(7) = mean(features_9.small_world.beta);
figure;
scatter(blobs,small_world,'red','filled');
title('small-world based on blobs beta');
xlabel('Blobs');
ylabel('small-world of network');
grid on

small_world = zeros(num_blobs,1);
small_world(1) = mean(features_3.small_world.lowGamma);
small_world(2) = mean(features_4.small_world.lowGamma);
small_world(3) = mean(features_5.small_world.lowGamma);
small_world(4) = mean(features_6.small_world.lowGamma);
small_world(5) = mean(features_7.small_world.lowGamma);
small_world(6) = mean(features_8.small_world.lowGamma);
small_world(7) = mean(features_9.small_world.lowGamma);
figure;
scatter(blobs,small_world,'red','filled');
title('small-world based on blobs gamma');
xlabel('Blobs');
ylabel('small-world of network');
grid on

%% Blob based plots betweenness
num_blobs = 7;
blobs = 3:1:9;
betweenness = zeros(num_blobs,1);
for i = 1:12
    if i >= 4 
        betweenness(1,i) = mean(features_3(i+1).betweenness.beta);
        betweenness(2,i) = mean(features_4(i+1).betweenness.beta);
        betweenness(3,i) = mean(features_5(i+1).betweenness.beta);
        betweenness(4,i) = mean(features_6(i+1).betweenness.beta);
        betweenness(5,i) = mean(features_7(i+1).betweenness.beta);
        betweenness(6,i) = mean(features_8(i+1).betweenness.beta);
        betweenness(7,i) = mean(features_9(i+1).betweenness.beta);
    else
        betweenness(1,i) = mean(features_3(i).betweenness.beta);
        betweenness(2,i) = mean(features_4(i).betweenness.beta);
        betweenness(3,i) = mean(features_5(i).betweenness.beta);
        betweenness(4,i) = mean(features_6(i).betweenness.beta);
        betweenness(5,i) = mean(features_7(i).betweenness.beta);
        betweenness(6,i) = mean(features_8(i).betweenness.beta);
        betweenness(7,i) = mean(features_9(i).betweenness.beta);
    end
end
plotter(blobs,betweenness,'betweenness based on blobs beta' ...
    ,'Blobs','betweenness of network',12,3,9)

for i = 1:12
    if i >= 4 
        betweenness(1,i) = mean(features_3(i+1).betweenness.lowGamma);
        betweenness(2,i) = mean(features_4(i+1).betweenness.lowGamma);
        betweenness(3,i) = mean(features_5(i+1).betweenness.lowGamma);
        betweenness(4,i) = mean(features_6(i+1).betweenness.lowGamma);
        betweenness(5,i) = mean(features_7(i+1).betweenness.lowGamma);
        betweenness(6,i) = mean(features_8(i+1).betweenness.lowGamma);
        betweenness(7,i) = mean(features_9(i+1).betweenness.lowGamma);
    else
        betweenness(1,i) = mean(features_3(i).betweenness.lowGamma);
        betweenness(2,i) = mean(features_4(i).betweenness.lowGamma);
        betweenness(3,i) = mean(features_5(i).betweenness.lowGamma);
        betweenness(4,i) = mean(features_6(i).betweenness.lowGamma);
        betweenness(5,i) = mean(features_7(i).betweenness.lowGamma);
        betweenness(6,i) = mean(features_8(i).betweenness.lowGamma);
        betweenness(7,i) = mean(features_9(i).betweenness.lowGamma);
    end
end
plotter(blobs,betweenness,'betweenness based on blobs gamma' ...
    ,'Blobs','local effic of network',12,3,9)

%% daboxplot
data1 = {};
data2 = {};
data3 = {};
data4 = {};
data1{1} = clust_coef.';
data2{1} = local_effic.';
data3{1} = global_effic.';
data4{1} = char_pl.';
 
%%
data1{2} = clust_coef.';
data2{2} = local_effic.';
data3{2} = global_effic.';
data4{2} = char_pl.';

group_names = {'Beta', 'Gamma'};
c =  [[0.447 0.651 0];[0.592 0.416 0.671]];  
condition_names = {'3', '4', '5', '6', '7', '8', '9'};

figure;
subplot(2,2,1)
h = daboxplot(data1,'linkline',1,...
    'xtlabels', condition_names,'legend',group_names,...
    'whiskers',0,'outliers',1,'outsymbol','r*','scatter',2,'boxalpha',0.5,'color',c);
ylabel('Clustering Coeficient');
xlabel('Number of Blobs');
xl = xlim; xlim([xl(1), xl(2)]);    % make more space for the legend
set(gca,'FontSize',12)

%figure;
subplot(2,2,2)
h = daboxplot(data2,'linkline',1,...
    'xtlabels', condition_names,'legend',group_names,...
    'whiskers',0,'outliers',1,'outsymbol','r*','scatter',2,'boxalpha',0.5,'color',c);
ylabel('Local Efficiency');
xlabel('Number of Blobs');
xl = xlim; xlim([xl(1), xl(2)]);    % make more space for the legend
set(gca,'FontSize',12)

%figure;
subplot(2,2,4)
h = daboxplot(data3,'linkline',1,...
    'xtlabels', condition_names,'legend',group_names,...
    'whiskers',0,'outliers',1,'outsymbol','r*','scatter',2,'boxalpha',0.5,'color',c);
ylabel('Global Efficiency');
xlabel('Number of Blobs');
xl = xlim; xlim([xl(1), xl(2)]);    % make more space for the legend
set(gca,'FontSize',12)

%figure;
subplot(2,2,3)
h = daboxplot(data4,'linkline',1,...
    'xtlabels', condition_names,'legend',group_names,...
    'whiskers',0,'outliers',1,'outsymbol','r*','scatter',2,'boxalpha',0.5,'color',c);
ylabel('Characteristic Path Length');
xlabel('Number of Blobs');
xl = xlim; xlim([xl(1), xl(2)]);    % make more space for the legend
set(gca,'FontSize',12)


%% Functions

function plotter(x,y,title_input,xlabel_input,ylabel_input,num_subj,from_blob,to_blob)
    figure;
    sz = 40;
    c = zeros(num_subj,3);
    % Green = [0.62 0.961 0.424]
    % violet = [0.863 0.678 0.961]
    for i = 1:num_subj
        c(i,:) = [0.62 0.961 0.424]* (0.95 - (i * 0.03)) ;
    end
    scatter(x, y, sz, c, 'filled', 'MarkerEdgeColor', [1 1 1], 'LineWidth', 0.5);
    %set(gca, 'Color', [0 0.7 0.7]*0.99);
    title(title_input);
    xlabel(xlabel_input);
    ylabel(ylabel_input);
    xlim([2.5,9.5]);
    %ylim([0.04,0.1])
    % legend
    % grid on
    hold on;
    x = repmat(from_blob:to_blob, 1, num_subj)';
    y = y(:);
    p = polyfit(x, y, 1);
    x_line = 2:1:10;
    yfit = polyval(p, x_line);
    color = [0.961 0.655 0.155];
    plot(x_line, yfit, '--', 'Color', color, 'LineWidth', 1.2);
    mdl = fitlm(x, y);
    % disp(mdl);
    p_value = mdl.Coefficients.pValue(2);
    r_squared = mdl.Rsquared.Ordinary;
    [rho, p_value] = corr(x, y, 'Type', 'Spearman');
    p_value
    rho
    text_position_x = mean(x);  % X position for the text
    text_position_y = max(y);   % Y position (place it just below the trendline)
    text(text_position_x, text_position_y, sprintf('P-value: %.6f\nR^2: %.6f', p_value, rho), ...
        'VerticalAlignment', 'top', 'HorizontalAlignment', 'center', 'BackgroundColor', 'w');
    hold off;
end
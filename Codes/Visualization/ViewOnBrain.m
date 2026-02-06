% 3D view
clc

features = features_lowConf_all;
source_names = load('Sources_names.mat');
source_locations = load('Sources_locations.mat');

window_num = 1;

% Defining .node file part 1
colors = features.affiliations_final.beta(:,window_num);
nodes_beta = [source_locations.sources_locations colors];
colors = features.affiliations_final.lowGamma(:,window_num);
nodes_gamma = [source_locations.sources_locations colors];

% Sources names and weights
nodes_beta = num2cell(nodes_beta);
nodes_gamma = num2cell(nodes_gamma);
for i = 1:size(features.Graphs.beta,2)
    nodes_beta{i,6} = source_names.Label{i};
    nodes_beta{i,5} = features.degree.beta(1,i);
    nodes_gamma{i,6} = source_names.Label{i};
    nodes_gamma{i,5} = features.degree.lowGamma(1,i);
end

edge_beta = squeeze(features.Graphs.beta(1,:,:));
edge_gamma = squeeze(features.Graphs.lowGamma(1,:,:));


%%
% % Defining .node file part 2
% for i = 1:6
%     for j = 1:4
%         for w = 1:30
%             nodes{w,5} = nodes_weigths_fixed(i,j,w);
%         end
%         % file_name = 'nodes_fixed.node';
%         % fileID = fopen(file_name, 'w'); 
%         % for i1 = 1:size(nodes, 1) 
%         %     for j1 = 1:size(nodes, 2) 
%         %         fprintf(fileID, '%s\t', nodes{i1, j1});
%         %     end 
%         %     fprintf(fileID, '\n');
%         % end
%         % fclose(fileID);
%     end
% end
% 
% beta = squeeze(Graphs(5,4,:,:));
% gamma = squeeze(Graphs(6,4,:,:));
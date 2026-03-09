% Genomic Data Visualization using Heatmap and Scatter Plot
% Example gene expression dataset

clc;
clear;
close all;

% Simulated genomic data
numGenes = 50;      % number of genes
numSamples = 10;    % number of samples

% Generate random gene expression values
geneExpression = rand(numGenes, numSamples) * 10;

% Create gene and sample labels
geneLabels = strcat("Gene_", string(1:numGenes));
sampleLabels = strcat("Sample_", string(1:numSamples));

% ---------------- Heatmap Visualization ----------------
figure;
heatmap(sampleLabels, geneLabels, geneExpression);
title('Genomic Gene Expression Heatmap');
xlabel('Samples');
ylabel('Genes');
colormap(jet);

% ---------------- Scatter Plot Visualization ----------------
% Compare expression of two genes across samples
gene1 = geneExpression(1, :);
gene2 = geneExpression(2, :);

figure;
scatter(gene1, gene2, 100, 'filled');
xlabel('Gene 1 Expression');
ylabel('Gene 2 Expression');
title('Scatter Plot of Gene Expression (Gene1 vs Gene2)');
grid on;
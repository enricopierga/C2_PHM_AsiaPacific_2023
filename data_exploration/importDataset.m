%% IMPORTAZIONE DATASET PHM ASIA PACIFIC 2023
% Questo script importa i file CSV del dataset (Train e Test), legge i file di etichette,
% e salva il dataset in un file .mat per un utilizzo più rapido.

clear; clc; close all;

%% Percorsi dei file
datasetPath = './dataset/'; % Cartella contenente i dati
trainDataPath = fullfile(datasetPath, 'Train', 'data');
testDataPath = fullfile(datasetPath, 'Test', 'data');

trainLabelsFile = fullfile(datasetPath, 'Train', 'labels.xlsx');
testLabelsFile = fullfile(datasetPath, 'Test', 'labels_spacecraft.xlsx');

%% Importazione Dati di Training
disp('Importazione dei dati di TRAINING...');
trainFiles = dir(fullfile(trainDataPath, '*.csv'));

trainData = struct(); % Struttura per contenere i dati di training

for i = 1:length(trainFiles)
    % Nome file e percorso completo
    filename = trainFiles(i).name;
    filepath = fullfile(trainDataPath, filename);

    % Lettura tabella CSV
    T = readtable(filepath);

    % Salva la tabella con il nome del caso (rimuove l'estensione .csv)
    caseName = erase(filename, '.csv');
    trainData.(caseName) = T;
end

disp('Dati di training importati con successo!');

%% Importazione Dati di Test
disp('Importazione dei dati di TEST...');
testFiles = dir(fullfile(testDataPath, '*.csv'));

testData = struct(); % Struttura per contenere i dati di test

for i = 1:length(testFiles)
    % Nome file e percorso completo
    filename = testFiles(i).name;
    filepath = fullfile(testDataPath, filename);

    % Lettura tabella CSV
    T = readtable(filepath);

    % Salva la tabella con il nome del caso (rimuove l'estensione .csv)
    caseName = erase(filename, '.csv');
    testData.(caseName) = T;
end

disp('Dati di test importati con successo!');

%% Importazione Etichette
disp('Importazione delle etichette...');
trainLabels = readtable(trainLabelsFile);
testLabels = readtable(testLabelsFile);

disp('Etichette importate con successo!');

%% Salvataggio in un file .mat
disp('Salvataggio del dataset in MATLAB...');
save('dataset.mat', 'trainData', 'testData', 'trainLabels', 'testLabels');

disp('Importazione completata e dati salvati in dataset.mat!');

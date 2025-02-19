% importDataset.m
% Script per importare il dataset e le etichette su MATLAB

clear; clc; close all;

% Percorsi delle cartelle e dei file
baseFolder = fullfile(pwd, 'Dataset', 'test data'); % Usa il percorso relativo alla cartella corrente
dataFolder = fullfile(baseFolder, 'data'); % Cartella dei file CSV dei casi
labelFile = fullfile(baseFolder, 'answer.csv'); % File con le etichette

% Verifica se il file esiste prima di leggerlo
if ~isfile(labelFile)
    error('Il file answer.csv non è stato trovato nel percorso specificato: %s', labelFile);
end

% Leggi il file answer.csv mantenendo i nomi delle colonne originali
labels = readtable(labelFile, 'VariableNamingRule', 'preserve');

% Visualizza le prime righe delle etichette per verifica
disp('Prime righe delle etichette (answer.csv):');
head(labels);


% Inizializza una cella per contenere i dati dei casi
dataFiles = dir(fullfile(dataFolder, 'Case*.csv'));
numFiles = length(dataFiles);

% Struttura per salvare i dati importati
data = struct();

% Itera su ogni file CSV nella cartella "data"
for i = 1:numFiles
    % Leggi il nome del file
    fileName = dataFiles(i).name;
    filePath = fullfile(dataFolder, fileName);
    
    % Importa il file CSV come tabella
    caseData = readtable(filePath);
    
    % Estrai l'ID del caso dal nome del file (es. "Case195.csv" -> 195)
    caseID = sscanf(fileName, 'Case%d.csv');
    
    % Salva i dati nel struct usando l'ID come campo
    data.(sprintf('Case%d', caseID)) = caseData;
    
    % Mostra un'anteprima dei dati importati (facoltativo)
    if i <= 3
        fprintf('Dati importati da %s:\n', fileName);
        head(caseData)
    end
end

disp('Importazione dei dati completata!');

% Salva i dati e le etichette in un file .mat per uso futuro
save('dataset.mat', 'data', 'labels');


%% Controllo ulteriore sulle etichette dei files

% Estrai tutti gli ID dei casi dai file CSV importati
importedIDs = cellfun(@(x) sscanf(x, 'Case%d.csv'), {dataFiles.name});

% Estrai gli ID dal file delle etichette
labelIDs = labels.ID;

% Confronta le liste di ID
missingIDs = setdiff(labelIDs, importedIDs);
extraIDs = setdiff(importedIDs, labelIDs);

% Risultati del controllo
if isempty(missingIDs) && isempty(extraIDs)
    disp('✅ Tutti i file CSV corrispondono agli ID delle etichette!');
else
    if ~isempty(missingIDs)
        fprintf('⚠️ Mancano i seguenti file CSV: %s\n', num2str(missingIDs'));
    end
    if ~isempty(extraIDs)
        fprintf('⚠️ Ci sono file CSV extra non presenti nelle etichette: %s\n', num2str(extraIDs'));
    end
end

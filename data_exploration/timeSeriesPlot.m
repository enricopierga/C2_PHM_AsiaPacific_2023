% PREPARAZIONE DATI PER DIAGNOSTIC FEATURE DESIGNER (DFD)
clear; clc; close all;
load('dataset.mat'); % Carica i dati

% **Definiamo i millisecondi esatti di apertura e chiusura**
intervals = [99 101; 299 301] / 1000; % Convertiti in secondi

% **Inizializziamo la tabella per DFD**
dataDFD = table();

for c = 1:length(trainLabels.Var1)
    caseName = sprintf('Case%03d', trainLabels.Var1(c)); % Genera nome tipo "Case001"
    condition = trainLabels.Var3{c};  % Normal, Fault, Anomaly
    
    % **Controlliamo che il caso esista in trainData**
    if isfield(trainData, caseName)
        time = trainData.(caseName).TIME; % Tempo in secondi
        for sensorID = 2:8 % Sensori P1-P7
            sensorName = trainData.(caseName).Properties.VariableNames{sensorID};
            pressure = trainData.(caseName).(sensorName);
            
            % **Filtra solo i dati nei millisecondi d’interesse**
            for i = 1:size(intervals, 1)
                idx = (time >= intervals(i,1)) & (time <= intervals(i,2));
                if any(idx) % Se ci sono dati
                    % **Salviamo i dati in formato tabella**
                    tempTable = table(time(idx) * 1000, pressure(idx), repmat({sensorName}, sum(idx), 1), ...
                        repmat({condition}, sum(idx), 1), 'VariableNames', {'Time_ms', 'Pressure', 'Sensor', 'Condition'});
                    dataDFD = [dataDFD; tempTable]; % Accumuliamo i dati
                end
            end
        end
    end
end

% **Salviamo la tabella per DFD**
save('dataForDFD.mat', 'dataDFD');

% **Apriamo DFD manualmente**
disp('Apri Diagnostic Feature Designer e importa il file dataForDFD.mat');


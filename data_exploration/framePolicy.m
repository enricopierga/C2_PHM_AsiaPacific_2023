% FRAME POLICY - SEGMENTAZIONE TEMPORALE (CORRETTO)
% Questo script suddivide il segnale in 3 finestre temporali e le plotta separatamente.

clear; clc; close all;
load('dataset.mat');

% Selezione del caso e del sensore
caseName = 'Case001';
sensorName = 'P1';

% Estrazione dati
time = trainData.(caseName).TIME;
pressureSignals = trainData.(caseName).(sensorName);

% Definizione della segmentazione
frameSize = 400; % Ogni segmento è di 400 ms
numFrames = 3;
colors = ['r', 'g', 'b'];

figure; hold on;
for i = 1:numFrames
    idxStart = (i-1) * frameSize + 1;
    idxEnd = min(i * frameSize, length(time));
    
    plot(time(idxStart:idxEnd), pressureSignals(idxStart:idxEnd), ...
         colors(i), 'LineWidth', 1.5);
end
xlabel('Tempo (ms)');
ylabel('Pressione [Pa]');
title(['Segmentazione in ', num2str(numFrames), ' frame - ', sensorName]);
legend('Apertura', 'Transizione', 'Chiusura');
grid on; hold off;

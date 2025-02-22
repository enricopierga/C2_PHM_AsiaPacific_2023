% VISUALIZZAZIONE SEGNALE TEMPORALE
% Questo script carica un caso specifico e plotta il segnale temporale di un sensore.

clear; clc; close all;
load('dataset.mat'); % Carica il dataset

% Selezione del caso e del sensore, modifiche a scelta
caseName = 'Case001'; % Modifica se necessario
sensorName = 'P1'; % Modifica per scegliere un altro sensore (P1-P7)

% Estrazione dati
time = trainData.(caseName).TIME; % Colonna tempo
pressureSignals = trainData.(caseName).(sensorName); % Pressione del sensore selezionato

% Plot del segnale temporale
figure;
plot(time, pressureSignals, 'b', 'LineWidth', 1.5);
xlabel('Tempo (ms)');
ylabel('Pressione [Pa]');
title(['Andamento Pressione - ', caseName, ' (', sensorName, ')']);
grid on;


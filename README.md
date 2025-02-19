# 🚀 Modulo di Diagnosi per il Progetto C2 - PHM Asia Pacific 2023

## 📋 Descrizione del Progetto
Il progetto mira a sviluppare un modulo di diagnosi per classificare anomalie, bolle, guasti alle elettrovalvole e casi anomali sconosciuti in un sistema di propulsione spaziale simulato dalla Japan Aerospace Exploration Agency (JAXA). Utilizzando dati simulati che coprono condizioni normali e scenari di guasto, l'obiettivo è identificare correttamente le condizioni operative del sistema.

## 📂 Struttura del Progetto
```
C2_Progetto
│
├─ main.m                  % Script principale per eseguire tutto il flusso
├─ importDataset.m         % Script per l'importazione e la preparazione del dataset

```

## 🛠️ Prerequisiti
- MATLAB con i seguenti toolbox:
  - Predictive Maintenance Toolbox
  - Signal Processing Toolbox
  - Statistics and Machine Learning Toolbox

## 🚦 Istruzioni per l'Esecuzione
1. Clonare il repository:
```sh
git clone https://github.com/tuo-username/C2_Progetto.git
cd C2_Progetto
```
2. Eseguire lo script principale:
```matlab
run('main.m')
```
3. Seguire i log nella Command Window per monitorare l'importazione dei dati, il preprocessamento e la valutazione del modello.

## 📊 Funzionalità Implementate
- Importazione automatizzata dei file CSV dei casi di test
- Preprocessamento dei dati con normalizzazione
- Estrazione delle feature diagnostiche
- Addestramento di classificatori per l'identificazione delle anomalie
- Rilevazione di anomalie sconosciute
- Valutazione del modello con metriche standard (precision, recall, F1-score)

## 👨‍💻 Contributori
- **Davide De Grazia**
- **Enrico Piergallini**
- **Mauro Giuliani**


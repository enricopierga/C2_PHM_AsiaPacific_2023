# C2_PHM_AsiaPacific_2023

## Descrizione del Progetto
Questo progetto è sviluppato per il corso di **Manutenzione Preventiva per la Robotica e l'Automazione**, con l'obiettivo di effettuare la diagnosi di anomalie in un sistema di propulsione spaziale. I dati utilizzati sono simulati e provengono dal dataset **PHM Asia Pacific 2023**, rilasciato dalla **JAXA**.

L'analisi si concentra su:
- **Feature Engineering**: Estrazione e selezione delle caratteristiche rilevanti.
- **Data Exploration**: Analisi preliminare dei dati per comprendere la loro distribuzione e struttura.
- **Anomaly Detection**: Identificazione di guasti e anomalie attraverso modelli di machine learning.
- **Classificazione dei guasti**: Utilizzo di un approccio a cascata per selezionare il miglior classificatore.

## Struttura del Progetto
La cartella principale del progetto contiene diversi file e cartelle organizzate come segue:

- `dataset/` - Contiene i dati grezzi utilizzati per l'analisi.
- `phm_env/` - Ambiente di sviluppo specifico per il progetto.
- `task1/`, `task2/`, `task3/`, `task4/` - Suddivisione del lavoro in task specifici per una gestione modulare.
  - `task3/`
    - `task3_idea.png` - Diagramma delle idee per il task 3.
    - `task3.ipynb` - Notebook Jupyter contenente l'implementazione del task 3.
  - `task4/`
    - `fault_locations.pkl` - File contenente informazioni sui guasti rilevati.
    - `task4_idea.png` - Schema delle idee per il task 4.
    - `task4.ipynb` - Notebook Jupyter con l'implementazione del task 4.
- `.gitignore` - File di configurazione per escludere file non necessari dal repository.
- `data_exploration.ipynb` - Analisi preliminare e visualizzazione dei dati.
- `feature_engineering.ipynb` - Estrazione e selezione delle caratteristiche principali per i modelli.
- `import_dataset.ipynb` - Script per l'importazione e la gestione del dataset.
- `Partenza_COLDS.drawio.pdf` - Diagramma del flusso di lavoro o schema tecnico.
- `README.md` - Documento informativo sul progetto.
- `requirements.txt` - Elenco delle librerie necessarie per eseguire il progetto.

## Requisiti
Per eseguire il progetto, assicurati di avere installate le seguenti dipendenze. Puoi installarle usando il comando:
```bash
pip install -r requirements.txt
```

## Utilizzo
1. **Preparazione dell'Ambiente**: Clona il repository e crea un ambiente virtuale.
   ```bash
   git clone <repository-url>
   cd C2_PHM_AsiaPacific_2023
   python -m venv phm_env
   source phm_env/bin/activate  # Per Linux/Mac
   phm_env\Scripts\activate  # Per Windows
   pip install -r requirements.txt
   ```

2. **Esegui l'analisi esplorativa** con `data_exploration.ipynb` per visualizzare le caratteristiche principali del dataset.
3. **Feature Engineering**: Utilizza `feature_engineering.ipynb` per elaborare i dati e creare feature utili per la classificazione.
4. **Anomaly Detection e Classificazione**: Implementa i notebook `task3.ipynb` e `task4.ipynb` per rilevare anomalie e classificare i guasti.

## Contributori
- **Davide De Grazia** 
- **Mauro Giuliani**
- **Enrico Piergallini**

## Licenza
Questo progetto è distribuito sotto licenza MIT. Per maggiori dettagli, consulta il file LICENSE (se presente).




# C2_PHM_AsiaPacific_2023

## Descrizione del Progetto
Questo progetto è sviluppato per il corso di **Manutenzione Preventiva per la Robotica e l'Automazione**, con l'obiettivo di effettuare la diagnosi di anomalie in un sistema di propulsione spaziale. I dati utilizzati sono simulati e provengono dal dataset **PHM Asia Pacific 2023** 📊, rilasciato dalla **JAXA** ([link competizione](https://phmap.jp/program-data/)).

L'analisi si concentra su:
- **Feature Engineering** : Estrazione e selezione delle caratteristiche rilevanti.
- **Data Exploration**: Analisi preliminare dei dati per comprendere la loro distribuzione e struttura.
- **Anomaly Detection**: Identificazione di guasti e anomalie attraverso modelli di machine learning.
- **Classificazione di guasti ed anomalie** : Utilizzo di un approccio a cascata per selezionare il miglior classificatore.
- **Problema di regressione**:  Calcolo del rapporto di apertura delle valvole classificate come guaste.


## 📁 Struttura del Progetto
La cartella principale del progetto contiene diversi file e cartelle organizzate come segue:

- `dataset/` - Contiene i dati grezzi utilizzati per l'analisi, dataset temporanei utilizzati durante lo sviluppo. 
- `phm_env/` - Ambiente di sviluppo specifico per il progetto. 
- `task1/`, `task2/`, `task3/`, `task4/` - Suddivisione del lavoro in task specifici per una gestione modulare. 
  - `task3/`
    - `anomaly_locations.pkl` - Modello contenente informazioni sui guasti causati dalla contaminazione da bolle d'aria. 
    - `task3_schema.png` - Diagramma delle idee per il task 3.
    - `task3.ipynb` - Notebook Jupyter contenente l'implementazione del task 3. 
  - `task4/`
    - `fault_locations.pkl` - Modello contenente informazioni sui guasti causati dall'errata apertura delle elettrovalvole. 
    - `task4_schema.png` - Schema delle idee per il task 4. 
    - `task4.ipynb` - Notebook Jupyter con l'implementazione del task 4. 
  - `task5/`
    - `task5_schema.png` - Schema delle idee per il task 5. 
    - `task5.ipynb` - Notebook Jupyter con l'implementazione del task 4. 
- `.gitignore` - File di configurazione per escludere file non necessari dal repository. 
- `data_exploration.ipynb` - Analisi preliminare e visualizzazione dei dati. 
- `feature_engineering.ipynb` - Estrazione e selezione delle caratteristiche principali per i modelli. 
- `import_dataset.ipynb` - Script per l'importazione e la gestione del dataset. 
- `overall_evaluation_metric.ipynb` - Notebook contenente il calcolo del punteggio finale rispetto alla Competizione. 
- `README.md` - Documento informativo sul progetto. 
- `requirements.txt` - Elenco delle librerie necessarie per eseguire il progetto. 

## 💻 Utilizzo
1. **Preparazione dell'Ambiente**: Clona il repository e crea un ambiente virtuale Python (Versione consigliata 3.12 o successive).
   ```bash
   git clone <repository-url>
   cd C2_PHM_AsiaPacific_2023
   python -m venv phm_env
   source phm_env/bin/activate  # Per Linux/Mac
   phm_env\Scripts\activate  # Per Windows
   pip install -r requirements.txt
   ```

2. **Esegui l'analisi esplorativa** utilizza `data_exploration.ipynb` per visualizzare le caratteristiche principali del dataset.
3. **Feature Engineering**: utilizza `feature_engineering.ipynb` per elaborare i dati e creare feature utili per la classificazione.
4. **Svolgimento dei 5 task previsti dal progetto**: utilizza i notebook `task1.ipynb`, `task2.ipynb`, `task3.ipynb`, `task4.ipynb` per rilevare anomalie, gestire l'anomaly detection dei guasti non noti e classificare i guasti noti; esegui `task5.ipynb` per calcolare i rapporti di apertura delle valvole guaste.
5. **Calcolo del punteggio ottenuto**: Esegui `overall_evaluation_metric.ipynb` per calcolare il punteggio percentuale ottenuto complessivamente.

**Punteggio finale ottenuto**: **85.82%**

## 👨🏻‍💼 Contributori
- **Davide De Grazia** 
- **Mauro Giuliani**
- **Enrico Piergallini**

## 📌 Licenza
Questo progetto è distribuito sotto licenza MIT. Per maggiori dettagli, consulta il file LICENSE.




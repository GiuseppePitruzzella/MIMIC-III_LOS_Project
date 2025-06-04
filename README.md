<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/GiuseppePitruzzella/mimic3-los-prediction">
    <img src="assets/images/logo.png" alt="Logo" width="300">
  </a>

  <h3 align="center">MIMIC-III ICU LOS Prediction</h3>

  <p align="center">
    A supervised machine learning pipeline for predicting ICU Length of Stay (LOS) using the MIMIC-III clinical dataset.
    <br />
    <a href="https://github.com/GiuseppePitruzzella/mimic3-los-prediction/issues">Report Bug</a>
    ·
    <a href="https://github.com/GiuseppePitruzzella/mimic3-los-prediction/issues">Request Feature</a>
  </p>
</div>


## 📘 Project Overview

This project applies supervised learning to predict the ICU Length of Stay (LOS), a continuous variable, using regression models based on neural networks and other machine learning techniques. It leverages real ICU patient data from the publicly available MIMIC-III dataset, widely used in clinical AI research.


## 📦 Dataset Setup

To facilitate reproducibility, all necessary .csv files from the MIMIC-III clinical dataset have been kindly provided by the course instructor in compressed format (.csv.gz). The files have been made available via an educational mirror for use in this project.

## 🧪 Environment Setup

All required Python libraries are listed in `requirements.txt`.

You can set up the environment in two ways:

- **From a notebook**: run the appropriate cell in `00_setup.ipynb` to install all dependencies automatically.
- **From the command line**: execute

```bash
pip install -r requirements.txt
```

This will ensure your environment is ready to run the code and notebooks in this project.

---

## 📁 Project Structure

```bash
mimic3-los-prediction/
├── data/
│   └── raw/
│       └── download_mimic.sh     # Download script (tracked)
│       └── *.csv                 # Raw data (ignored via .gitignore)
├── notebooks/
├── src/
├── reports/
├── requirements.txt
├── .gitignore
├── README.md
```

---

## 🔒 Git Ignore Strategy

To prevent accidental commits of large patient data files:

* Raw data files
* Jupyter checkpoints
* Python bytecode
* OS system files


## 🔍 Initial Exploration

After setup, begin with the notebooks in `notebooks/`:

* Understand the core MIMIC-III tables
* Select relevant ICD9 codes
* Prepare data for modeling


## 🧾 License

Distributed under the **GNU GPLv3 License**.
See `LICENSE.txt` for details.


## 📬 Contact

Giuseppe Pitruzzella – [GitHub](https://github.com/GiuseppePitruzzella)
Project Repository – [mimic3-los-prediction](https://github.com/GiuseppePitruzzella/mimic3-los-prediction)

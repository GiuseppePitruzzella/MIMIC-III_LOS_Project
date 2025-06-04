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

All `.csv` files from the MIMIC-III educational mirror are automatically downloaded and decompressed using the script:

📁 **`data/raw/download_mimic.sh`**

To trigger the download:
```python
!bash ../data/raw/download_mimic.sh
````

This will:

* Fetch `.csv.gz` files from: [https://www.dcc.fc.up.pt/\~ines/MIMIC-III/](https://www.dcc.fc.up.pt/~ines/MIMIC-III/)
* Decompress them
* Store results in `data/raw/`

> ℹ️ Only `download_mimic.sh` is version-controlled; all `.csv` files are ignored via `.gitignore`.


## 🧪 Environment Setup

Required libraries are listed in the file `requirements.txt`.

To install all dependencies from within a notebook:

```python
import subprocess
import sys
import importlib.util

req_file = "../requirements.txt"

def read_requirements(file_path):
    with open(file_path, "r") as f:
        return [line.strip().split("==")[0] for line in f if line.strip() and not line.startswith("#")]

def is_installed(package_name):
    return importlib.util.find_spec(package_name) is not None

def pip_install(package_name):
    print(f"📦 Installing: {package_name}")
    subprocess.check_call([sys.executable, "-m", "pip", "install", package_name])

module_map = {
    "scikit-learn": "sklearn",
    "ipython": "IPython"
}

for pkg in read_requirements(req_file):
    module_name = module_map.get(pkg, pkg)
    if not is_installed(module_name):
        pip_install(pkg)
    else:
        print(f"✅ Already installed: {pkg}")
```

Alternatively, from the command line:

```bash
pip install -r requirements.txt
```

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

* All files in `data/raw/` are ignored
* Exception: `download_mimic.sh` is version-controlled

`.gitignore` includes rules for:

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

<!-- PROJECT SHIELDS -->
<!--
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]
-->

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/GiuseppePitruzzella/mimic3-los-prediction">
    <img src="/assets/images/logo.png" alt="Logo" width="200" height="200">
  </a>

  <h3 align="center">MIMIC-III ICU LOS Prediction</h3>

  <p align="center">
    Full Machine Learning pipeline for predicting ICU Length of Stay (LOS) using MIMIC-III dataset.
    <br />
    Exploratory analysis, visualization, supervised modeling and model interpretation.
    <br />
    <a href="https://github.com/GiuseppePitruzzella/mimic3-los-prediction/issues">Report Bug</a>
    ·
    <a href="https://github.com/GiuseppePitruzzella/mimic3-los-prediction/issues">Request Feature</a>
  </p>
</div>

---

## 📦 Project Overview

This project aims to analyze the MIMIC-III clinical dataset to:

- Select patients with a specific ICD9 disease
- Perform descriptive statistics and visualize clinical variables
- Train machine learning models to predict ICU Length of Stay (LOS)
- Interpret model predictions using SHAP or LIME

The final deliverable includes a report (PDF) and a fully documented Jupyter Notebook.

---

## 🚀 Getting Started

### Prerequisites

- Python 3.10+
- Jupyter Notebook
- Docker (optional)
- PostgreSQL (if using raw MIMIC-III database)

### Installation

1. Clone the repository
   ```sh
   git clone https://github.com/GiuseppePitruzzella/mimic3-los-prediction.git
   cd mimic3-los-prediction
    ```

2. (Optional) Set up virtual environment

   ```sh
   python -m venv venv
   source venv/bin/activate
   ```

3. Install dependencies

   ```sh
   pip install -r requirements.txt
   ```

---

## 📁 Project Structure

```bash
mimic3-los-prediction/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
│   ├── 01_data_exploration.ipynb
│   ├── 02_visualization.ipynb
│   ├── 03_feature_engineering.ipynb
│   ├── 04_modeling.ipynb
│   └── 05_interpretation.ipynb
├── reports/
│   └── progetto_finale.pdf
├── src/
│   └── preprocessing.py
├── LICENSE.txt
├── requirements.txt
└── README.md
```

---

## 📊 Usage Examples

* Launch Jupyter Notebook and execute cells in order.
* Switch disease or ICD9 code in the preprocessing step.
* Use `src/` functions to preprocess data programmatically.

*For detailed walkthroughs, refer to the notebooks.*

---

## 🤝 Contributing

Contributions are what make the open source community amazing. Any suggestions, bug reports, or enhancements are welcome.

1. Fork the repository
2. Create your Feature Branch (`git checkout -b feature/NewFeature`)
3. Commit your Changes (`git commit -m 'Add NewFeature'`)
4. Push to the Branch (`git push origin feature/NewFeature`)
5. Open a Pull Request

---

## 🧾 License

Distributed under the **GNU GPLv3** License.
See `LICENSE.txt` for more information.

---

## 📬 Contact

Giuseppe Pitruzzella – [GitHub Profile](https://github.com/GiuseppePitruzzella)
Project Repository – [GitHub Link](https://github.com/GiuseppePitruzzella/mimic3-los-prediction)

---

<!-- MARKDOWN LINKS -->

<!--
[contributors-shield]: https://img.shields.io/github/contributors/GiuseppePitruzzella/neotasks.svg?style=for-the-badge
[contributors-url]: https://github.com/GiuseppePitruzzella/neotasks/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/GiuseppePitruzzella/neotasks.svg?style=for-the-badge
[forks-url]: https://github.com/GiuseppePitruzzella/neotasks/network/members
[stars-shield]: https://img.shields.io/github/stars/GiuseppePitruzzella/neotasks.svg?style=for-the-badge
[stars-url]: https://github.com/GiuseppePitruzzella/neotasks/stargazers
[issues-shield]: https://img.shields.io/github/issues/GiuseppePitruzzella/neotasks.svg?style=for-the-badge
[issues-url]: https://github.com/GiuseppePitruzzella/neotasks/issues
[license-shield]: https://img.shields.io/github/license/GiuseppePitruzzella/neotasks.svg?style=for-the-badge
[license-url]: https://github.com/GiuseppePitruzzella/neotasks/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-blue.svg?style=for-the-badge&logo=linkedin&colorB=0077B5
[linkedin-url]: https://linkedin.com/in/tuo-nome
-->

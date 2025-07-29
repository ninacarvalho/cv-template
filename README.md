# CV – Template

A clean, structured LaTeX-based resume built with `latexmk` and organized into separate section files.

## 📁 Project Structure

```

cv/
├── sections/
│   ├── core\_competencies.tex
│   └── professional\_experience.tex
├── build/                  # Generated automatically
├── resume.tex  # Main LaTeX file
├── .latexmkrc              # Build config file
└── README.md

````

---

## ⚙️ Requirements

- macOS
- [Homebrew](https://brew.sh/)
- BasicTeX via Homebrew
- VS Code (optional) with LaTeX Workshop extension

---

## 🛠️ Installation & Setup

### 1. Install BasicTeX
```bash
brew install --cask basictex
````

### 2. Add TeX binaries to your PATH

```bash
echo 'export PATH="/Library/TeX/texbin:$PATH"' >> ~/.zprofile
source ~/.zprofile
```

### 3. Update TeX Live

```bash
sudo tlmgr update --self
```

### 4. Install required LaTeX packages

```bash
sudo tlmgr install \
  latexmk titlesec enumitem geometry xcolor hyperref fontawesome longtable parskip \
  fontspec iftex array multicol
```

---

## 🧪 How to Build

### Build and generate output in `build/`, with a symlink to the final PDF in the root:

```bash
latexmk -pdf resume.tex
```

To clean up auxiliary files only:

```bash
latexmk -c
```

To clean up everything (including the PDF):

```bash
latexmk -C
```

---

## 🧠 Notes

* The `.latexmkrc` file places all generated files into a `build/` folder and creates a symbolic link to the PDF in the root.
* All content sections (Core Competencies, Experience, etc.) are modular and live in `sections/`.

---

## ✅ Optional: VS Code Setup

1. Install the [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension.
2. Run VS Code from the terminal:

```bash
code .
```

This ensures it picks up your shell PATH with `latexmk`.

---

# 🚀 Setup Guide

Complete setup instructions for the Cracking the Code cryptography course.

## Table of Contents

- [System Requirements](#system-requirements)
- [Installation Methods](#installation-methods)
- [Verification](#verification)
- [Troubleshooting](#troubleshooting)
- [Next Steps](#next-steps)

## System Requirements

### Minimum Requirements

- **Operating System**: Windows 10+, macOS 10.14+, or Linux (Ubuntu 18.04+)
- **Python**: Version 3.7 or higher
- **RAM**: 4 GB minimum (8 GB recommended)
- **Storage**: 500 MB free space
- **Internet**: Required for initial setup

### Recommended Setup

- **Python**: 3.9 or higher
- **RAM**: 8 GB or more
- **IDE**: VS Code, PyCharm, or JupyterLab
- **Terminal**: Modern shell (bash, zsh, or PowerShell)

## Installation Methods

### Method 1: Quick Setup (Recommended)

**For macOS/Linux:**

```bash
# Clone the repository
git clone https://github.com/yourusername/CTC_PESU_IO.git
cd CTC_PESU_IO

# Run the setup script
chmod +x setup.sh
./setup.sh
```

**For Windows:**

```powershell
# Clone the repository
git clone https://github.com/yourusername/CTC_PESU_IO.git
cd CTC_PESU_IO

# Run the setup script
.\setup.ps1
```

### Method 2: Manual Setup

#### Step 1: Install Python

**macOS:**

```bash
# Using Homebrew
brew install python3

# Verify installation
python3 --version
```

**Windows:**

- Download from [python.org](https://www.python.org/downloads/)
- Check "Add Python to PATH" during installation
- Verify: `python --version`

**Linux (Ubuntu/Debian):**

```bash
sudo apt update
sudo apt install python3 python3-pip python3-venv
python3 --version
```

#### Step 2: Clone the Repository

```bash
git clone https://github.com/yourusername/CTC_PESU_IO.git
cd CTC_PESU_IO
```

If you don't have Git:

- Download ZIP from GitHub
- Extract to your desired location
- Navigate to the folder in terminal

#### Step 3: Create Virtual Environment

**Why Virtual Environment?**

- Isolates project dependencies
- Prevents version conflicts
- Easy to manage and delete

```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
# macOS/Linux:
source venv/bin/activate

# Windows:
venv\Scripts\activate

# Your prompt should now show (venv)
```

#### Step 4: Install Dependencies

```bash
# Upgrade pip
pip install --upgrade pip

# Install required packages
pip install -r requirements.txt

# This installs:
# - numpy (numerical computing)
# - sympy (symbolic mathematics)
# - ipywidgets (interactive widgets)
# - jupyterlab (notebook environment)
# - pycryptodome (cryptographic primitives)
# - cryptography (modern crypto library)
# - matplotlib (visualization)
```

#### Step 5: Install Jupyter Extensions (Optional but Recommended)

```bash
# Install Jupyter extensions
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# Enable widgets
jupyter nbextension enable --py widgetsnbextension
```

### Method 3: Using Conda

If you prefer Conda:

```bash
# Create conda environment
conda create -n crypto python=3.9

# Activate environment
conda activate crypto

# Install dependencies
conda install -c conda-forge numpy sympy matplotlib jupyter jupyterlab
pip install pycryptodome cryptography ipywidgets

# Register kernel
python -m ipykernel install --user --name crypto --display-name "Python (Crypto)"
```

### Method 4: Using Docker

For isolated environment:

```bash
# Pull the image
docker pull python:3.9-slim

# Run container with mounted volume
docker run -it --rm \
  -v $(pwd):/workspace \
  -w /workspace \
  -p 8888:8888 \
  python:3.9-slim \
  bash -c "pip install -r requirements.txt && jupyter lab --ip=0.0.0.0 --allow-root"
```

## Verification

### Test Python Installation

```bash
python3 << EOF
import sys
print(f"Python version: {sys.version}")
print(f"Python executable: {sys.executable}")
EOF
```

### Test Dependencies

```bash
python3 << EOF
# Test imports
try:
    import numpy
    import sympy
    import ipywidgets
    import jupyter
    from Crypto.Cipher import AES
    from cryptography.fernet import Fernet
    import matplotlib.pyplot as plt
    print("✓ All dependencies installed successfully!")
except ImportError as e:
    print(f"✗ Missing dependency: {e}")
EOF
```

### Launch Jupyter

```bash
# Start Jupyter Lab
jupyter lab

# Or Jupyter Notebook
jupyter notebook

# Should open browser at http://localhost:8888
```

### Test a Notebook

1. Open `H1.ipynb` in Jupyter
2. Run all cells (Cell → Run All)
3. Verify no errors appear
4. Check output displays correctly

## Troubleshooting

### Common Issues

#### Issue 1: Python command not found

**Solution:**

```bash
# Try python3 instead of python
python3 --version

# Add alias (optional)
echo "alias python=python3" >> ~/.bashrc  # Linux/macOS
source ~/.bashrc
```

#### Issue 2: Permission Denied

**Solution:**

```bash
# macOS/Linux
chmod +x setup.sh

# Or run with sudo (not recommended for venv)
sudo python3 -m pip install -r requirements.txt
```

#### Issue 3: pip not found

**Solution:**

```bash
# Install pip
python3 -m ensurepip --upgrade

# Or download get-pip.py
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
```

#### Issue 4: Virtual environment not activating

**Solution:**

```bash
# Delete and recreate
rm -rf venv
python3 -m venv venv

# Try different activation method
. venv/bin/activate  # macOS/Linux alternative
```

#### Issue 5: Jupyter widgets not displaying

**Solution:**

```bash
# Reinstall widgets
pip install --upgrade ipywidgets
jupyter nbextension enable --py widgetsnbextension --sys-prefix
jupyter labextension install @jupyter-widgets/jupyterlab-manager

# Restart Jupyter
```

#### Issue 6: Module not found in Jupyter

**Solution:**

```bash
# Verify kernel
jupyter kernelspec list

# Install ipykernel in venv
pip install ipykernel
python -m ipykernel install --user --name=venv

# Select kernel in Jupyter: Kernel → Change Kernel → venv
```

#### Issue 7: Port 8888 already in use

**Solution:**

```bash
# Use different port
jupyter lab --port=8889

# Or kill existing process
lsof -ti:8888 | xargs kill -9  # macOS/Linux
netstat -ano | findstr :8888   # Windows
```

### Platform-Specific Issues

**macOS:**

```bash
# If command line tools missing
xcode-select --install

# If OpenSSL issues
brew install openssl
```

**Windows:**

```powershell
# Enable long paths
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1

# If SSL errors
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt
```

**Linux:**

```bash
# If missing development headers
sudo apt install python3-dev build-essential

# If SSL certificate errors
pip install --upgrade certifi
```

## Next Steps

### 1. Explore the Repository

```bash
# List all files
ls -la

# Read the README
cat README.md

# Check course outline
cat COURSE_OUTLINE.md
```

### 2. Start Learning

**Beginner Path:**

1. Read `COURSE_OUTLINE.md`
2. Open `CTC Class 1 - Day 0.pdf`
3. Run `H1.ipynb` (Caesar cipher)
4. Progress through class materials

**Advanced Path:**

1. Jump to `RSALearner.ipynb`
2. Explore `Quantum Computing and PQC.pdf`
3. Try CTF crash course materials

### 3. Practice

```bash
# Create your own notebook
jupyter notebook my_crypto_experiments.ipynb

# Write your first cipher
# Follow examples from H1.ipynb
```

### 4. Join the Community

- Star the repository ⭐
- Open issues for questions
- Contribute improvements
- Share your learnings

## Additional Tools (Optional)

### Cryptographic Tools

```bash
# Install additional crypto tools
pip install hashlib pycrypto python-gnupg

# For CTF practice
pip install pwntools
```

### Code Quality Tools

```bash
# Install development tools
pip install black flake8 mypy pytest

# Format code
black .

# Lint code
flake8 .

# Type check
mypy .
```

### VS Code Extensions (Recommended)

If using VS Code:

- Python
- Jupyter
- Pylance
- GitLens
- Markdown All in One

## Uninstallation

### Remove Virtual Environment

```bash
# Deactivate
deactivate

# Delete
rm -rf venv
```

### Remove Dependencies

```bash
# Uninstall packages
pip uninstall -r requirements.txt -y

# Or delete entire folder
cd ..
rm -rf CTC_PESU_IO
```

## Getting Help

### Documentation

- [Python Documentation](https://docs.python.org/)
- [Jupyter Documentation](https://jupyter.org/documentation)
- [NumPy Documentation](https://numpy.org/doc/)

### Support

- **GitHub Issues**: Bug reports and feature requests
- **Discussions**: General questions
- **Email**: [Contact maintainers]

### Useful Commands Reference

```bash
# Virtual Environment
python3 -m venv venv              # Create
source venv/bin/activate          # Activate (macOS/Linux)
venv\Scripts\activate             # Activate (Windows)
deactivate                        # Deactivate

# Package Management
pip list                          # List installed packages
pip freeze > requirements.txt     # Save dependencies
pip install -r requirements.txt   # Install dependencies
pip install --upgrade package     # Upgrade package

# Jupyter
jupyter lab                       # Start JupyterLab
jupyter notebook                  # Start Jupyter Notebook
jupyter notebook list             # List running servers
jupyter kernelspec list           # List available kernels

# Git
git status                        # Check status
git pull                          # Update repository
git log --oneline                 # View commit history
```

## Quick Start Checklist

- [ ] Python 3.7+ installed
- [ ] Repository cloned
- [ ] Virtual environment created
- [ ] Dependencies installed
- [ ] Jupyter working
- [ ] Test notebook runs successfully
- [ ] Read README.md
- [ ] Read COURSE_OUTLINE.md
- [ ] Ready to learn! 🚀

---

**Setup complete! Ready to crack some codes! 🔐**

For questions or issues, please open a GitHub issue or check the troubleshooting section above.

---

<div align="center">

[⬆ Back to Main README](README.md)

</div>

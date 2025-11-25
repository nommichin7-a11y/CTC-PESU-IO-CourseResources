# Cracking the Code - Quick Setup Script for Windows
# Run this script in PowerShell

# Change to repository root directory
Set-Location -Path (Split-Path -Parent $PSScriptRoot)

Write-Host "🔐 Cracking the Code: Applied Cryptography Setup" -ForegroundColor Cyan
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""

# Function to print colored output
function Print-Success {
    param($message)
    Write-Host "✓ $message" -ForegroundColor Green
}

function Print-Error {
    param($message)
    Write-Host "✗ $message" -ForegroundColor Red
}

function Print-Info {
    param($message)
    Write-Host "ℹ $message" -ForegroundColor Yellow
}

# Check Python installation
Write-Host "Checking Python installation..."
try {
    $pythonVersion = python --version 2>&1
    if ($pythonVersion -match "Python (\d+\.\d+\.\d+)") {
        Print-Success "Python $($Matches[1]) found"
    }
} catch {
    Print-Error "Python not found. Please install Python 3.7 or higher."
    Write-Host "Download from: https://www.python.org/downloads/"
    exit 1
}

# Check pip installation
Write-Host "Checking pip installation..."
try {
    python -m pip --version | Out-Null
    Print-Success "pip found"
} catch {
    Print-Info "pip not found. Installing..."
    python -m ensurepip --upgrade
}

# Create virtual environment
Write-Host ""
Write-Host "Creating virtual environment..."
if (Test-Path "venv") {
    Print-Info "Virtual environment already exists. Skipping creation."
} else {
    python -m venv venv
    Print-Success "Virtual environment created"
}

# Activate virtual environment
Write-Host ""
Write-Host "Activating virtual environment..."
& ".\venv\Scripts\Activate.ps1"
Print-Success "Virtual environment activated"

# Upgrade pip
Write-Host ""
Write-Host "Upgrading pip..."
python -m pip install --upgrade pip --quiet
Print-Success "pip upgraded"

# Install dependencies
Write-Host ""
Write-Host "Installing dependencies..."
Print-Info "This may take a few minutes..."
python -m pip install -r requirements.txt --quiet
Print-Success "Dependencies installed"

# Verify installations
Write-Host ""
Write-Host "Verifying installations..."

$verifyScript = @"
import sys
errors = []

try:
    import numpy
    print('✓ NumPy')
except ImportError:
    errors.append('NumPy')

try:
    import sympy
    print('✓ SymPy')
except ImportError:
    errors.append('SymPy')

try:
    import ipywidgets
    print('✓ IPyWidgets')
except ImportError:
    errors.append('IPyWidgets')

try:
    import jupyter
    print('✓ Jupyter')
except ImportError:
    errors.append('Jupyter')

try:
    from Crypto.Cipher import AES
    print('✓ PyCryptodome')
except ImportError:
    errors.append('PyCryptodome')

try:
    from cryptography.fernet import Fernet
    print('✓ Cryptography')
except ImportError:
    errors.append('Cryptography')

try:
    import matplotlib
    print('✓ Matplotlib')
except ImportError:
    errors.append('Matplotlib')

if errors:
    print(f'\n✗ Failed to import: {", ".join(errors)}')
    sys.exit(1)
else:
    print('\n✓ All dependencies verified!')
"@

python -c $verifyScript

if ($LASTEXITCODE -ne 0) {
    Print-Error "Some dependencies failed to install"
    exit 1
}

# Setup Jupyter extensions (optional)
Write-Host ""
$response = Read-Host "Install Jupyter Lab extensions? (y/n)"
if ($response -eq 'y' -or $response -eq 'Y') {
    Write-Host "Installing Jupyter extensions..."
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build 2>$null
    jupyter nbextension enable --py widgetsnbextension --sys-prefix 2>$null
    Print-Success "Jupyter extensions installed"
}

# Create shortcuts
Write-Host ""
$response = Read-Host "Create convenience scripts? (y/n)"
if ($response -eq 'y' -or $response -eq 'Y') {
    # Create start_jupyter.bat
    $batchContent = @"
@echo off
call venv\Scripts\activate.bat
jupyter lab
"@
    Set-Content -Path "start_jupyter.bat" -Value $batchContent
    Print-Success "Created start_jupyter.bat"
    
    # Create activate.bat
    $activateContent = @"
@echo off
call venv\Scripts\activate.bat
echo Virtual environment activated!
echo Run 'jupyter lab' to start JupyterLab
"@
    Set-Content -Path "activate.bat" -Value $activateContent
    Print-Success "Created activate.bat"
}

# Print summary
Write-Host ""
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host "🎉 Setup Complete!" -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:"
Write-Host "1. Activate the virtual environment:"
Write-Host "   .\venv\Scripts\Activate.ps1"
Write-Host ""
Write-Host "2. Start Jupyter Lab:"
Write-Host "   jupyter lab"
Write-Host "   (or run: .\start_jupyter.bat)"
Write-Host ""
Write-Host "3. Open a notebook to start learning:"
Write-Host "   - H1.ipynb (Caesar cipher)"
Write-Host "   - RSALearner.ipynb (RSA encryption)"
Write-Host ""
Write-Host "4. Read the documentation:"
Write-Host "   - README.md"
Write-Host "   - COURSE_OUTLINE.md"
Write-Host "   - SETUP.md"
Write-Host ""
Write-Host "Happy learning! 🔐"
Write-Host ""

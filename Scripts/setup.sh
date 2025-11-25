#!/bin/bash

# Cracking the Code - Quick Setup Script
# This script automates the setup process for macOS and Linux

set -e  # Exit on error

# Change to repository root directory
cd "$(dirname "$0")/.."

echo "🔐 Cracking the Code: Applied Cryptography Setup"
echo "=================================================="
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

print_info() {
    echo -e "${YELLOW}ℹ${NC} $1"
}

# Check Python installation
echo "Checking Python installation..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1 | awk '{print $2}')
    print_success "Python ${PYTHON_VERSION} found"
else
    print_error "Python 3 not found. Please install Python 3.7 or higher."
    exit 1
fi

# Check pip installation
echo "Checking pip installation..."
if command -v pip3 &> /dev/null; then
    print_success "pip3 found"
else
    print_info "pip3 not found. Installing..."
    python3 -m ensurepip --upgrade
fi

# Create virtual environment
echo ""
echo "Creating virtual environment..."
if [ -d "venv" ]; then
    print_info "Virtual environment already exists. Skipping creation."
else
    python3 -m venv venv
    print_success "Virtual environment created"
fi

# Activate virtual environment
echo ""
echo "Activating virtual environment..."
source venv/bin/activate
print_success "Virtual environment activated"

# Upgrade pip
echo ""
echo "Upgrading pip..."
pip install --upgrade pip -q
print_success "pip upgraded"

# Install dependencies
echo ""
echo "Installing dependencies..."
print_info "This may take a few minutes..."
pip install -r requirements.txt -q
print_success "Dependencies installed"

# Verify installations
echo ""
echo "Verifying installations..."

python3 << EOF
import sys
errors = []

try:
    import numpy
    print("✓ NumPy")
except ImportError:
    errors.append("NumPy")

try:
    import sympy
    print("✓ SymPy")
except ImportError:
    errors.append("SymPy")

try:
    import ipywidgets
    print("✓ IPyWidgets")
except ImportError:
    errors.append("IPyWidgets")

try:
    import jupyter
    print("✓ Jupyter")
except ImportError:
    errors.append("Jupyter")

try:
    from Crypto.Cipher import AES
    print("✓ PyCryptodome")
except ImportError:
    errors.append("PyCryptodome")

try:
    from cryptography.fernet import Fernet
    print("✓ Cryptography")
except ImportError:
    errors.append("Cryptography")

try:
    import matplotlib
    print("✓ Matplotlib")
except ImportError:
    errors.append("Matplotlib")

if errors:
    print(f"\n✗ Failed to import: {', '.join(errors)}")
    sys.exit(1)
else:
    print("\n✓ All dependencies verified!")
EOF

if [ $? -ne 0 ]; then
    print_error "Some dependencies failed to install"
    exit 1
fi

# Setup Jupyter extensions (optional)
echo ""
read -p "Install Jupyter Lab extensions? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Installing Jupyter extensions..."
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build 2>/dev/null || true
    jupyter nbextension enable --py widgetsnbextension --sys-prefix 2>/dev/null || true
    print_success "Jupyter extensions installed"
fi

# Create shortcuts
echo ""
read -p "Create convenience scripts? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    # Create start_jupyter.sh
    cat > start_jupyter.sh << 'SCRIPT'
#!/bin/bash
source venv/bin/activate
jupyter lab
SCRIPT
    chmod +x start_jupyter.sh
    print_success "Created start_jupyter.sh"
    
    # Create activate.sh
    cat > activate.sh << 'SCRIPT'
#!/bin/bash
source venv/bin/activate
echo "Virtual environment activated!"
echo "Run 'jupyter lab' to start JupyterLab"
SCRIPT
    chmod +x activate.sh
    print_success "Created activate.sh"
fi

# Print summary
echo ""
echo "=================================================="
echo -e "${GREEN}🎉 Setup Complete!${NC}"
echo "=================================================="
echo ""
echo "Next steps:"
echo "1. Activate the virtual environment:"
echo "   source venv/bin/activate"
echo ""
echo "2. Start Jupyter Lab:"
echo "   jupyter lab"
echo "   (or run: ./start_jupyter.sh)"
echo ""
echo "3. Open a notebook to start learning:"
echo "   - H1.ipynb (Caesar cipher)"
echo "   - RSALearner.ipynb (RSA encryption)"
echo ""
echo "4. Read the documentation:"
echo "   - README.md"
echo "   - COURSE_OUTLINE.md"
echo "   - SETUP.md"
echo ""
echo "Happy learning! 🔐"
echo ""

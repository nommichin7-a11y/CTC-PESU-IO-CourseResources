# 🚀 Quick Start Guide

Get started with the Cracking the Code cryptography course in minutes!

## Prerequisites

- **Python 3.7+** installed on your system
- **Basic programming knowledge** (Python preferred)
- **Text editor or IDE** (VS Code, PyCharm, or Jupyter recommended)
- **Terminal/Command Prompt** access

## 5-Minute Setup

### Step 1: Get the Code

```bash
# Clone the repository
git clone https://github.com/yourusername/CTC_PESU_IO.git

# Navigate to the folder
cd CTC_PESU_IO
```

**Don't have Git?** Download the ZIP file from GitHub and extract it.

### Step 2: Run Setup

**macOS/Linux:**

```bash
./Scripts/setup.sh
```

**Windows:**

```powershell
.\Scripts\setup.ps1
```

### Step 3: Start Learning

```bash
# Activate virtual environment
source venv/bin/activate  # macOS/Linux
# or
venv\Scripts\activate     # Windows

# Start Jupyter
jupyter lab
```

That's it! Your browser will open with Jupyter Lab.

## First Steps

### 1. Open Your First Notebook

In Jupyter Lab, navigate to `Notebooks/` folder and open `H1.ipynb` (Caesar & Vigenère Cipher)

### 2. Run Your First Cell

Click on the first cell and press `Shift+Enter` to run it.

### 3. Try the Example

```python
from h1 import caesar_encrypt

# Encrypt a message
message = "HELLO WORLD"
shift = 3
encrypted = caesar_encrypt(message, shift)
print(f"Encrypted: {encrypted}")
```

## Learning Path

### Week 1: Foundations 🔰

1. **Day 0**: Read `CTC Class 1 - Day 0.pdf` - Crypto basics
2. **Day 1**: Open `H1.ipynb` - Implement Caesar cipher
3. **Day 2**: Try frequency analysis exercises

### Week 2: Modern Crypto 🔐

4. **Day 3**: Learn AES and symmetric encryption
5. **Day 4**: Open `RSALearner.ipynb` - Explore RSA
6. **Day 5**: Digital signatures and certificates

### Week 3: Advanced Topics 🚀

7. **Day 6**: Hash functions and password security
8. **Day 7**: Real-world applications
9. **Day 8**: Quantum computing threats and PQC

### Week 4: Practice 💪

- Complete CTF challenges
- Explore OSINT techniques
- Build your own projects

## Common Commands

```bash
# Activate environment
source venv/bin/activate              # macOS/Linux
venv\Scripts\activate                 # Windows

# Start Jupyter
jupyter lab                           # Recommended
jupyter notebook                      # Alternative

# Install additional packages
pip install package-name

# Update all packages
pip install --upgrade -r requirements.txt

# Deactivate environment
deactivate
```

## Quick Troubleshooting

### Issue: Python not found

```bash
# Try python3 instead
python3 --version
```

### Issue: Jupyter not opening

```bash
# Check if it's installed
pip list | grep jupyter

# Reinstall if needed
pip install --upgrade jupyter
```

### Issue: Module not found

```bash
# Make sure you're in virtual environment
# Look for (venv) in your prompt

# Reinstall dependencies
pip install -r requirements.txt
```

## Keyboard Shortcuts (Jupyter)

| Action                  | Shortcut      |
| ----------------------- | ------------- |
| Run cell                | `Shift+Enter` |
| Run cell, stay in place | `Ctrl+Enter`  |
| Insert cell above       | `A`           |
| Insert cell below       | `B`           |
| Delete cell             | `D, D`        |
| Undo delete             | `Z`           |
| Change to markdown      | `M`           |
| Change to code          | `Y`           |
| Show shortcuts          | `H`           |

## File Structure at a Glance

```
CTC_PESU_I:O/
├── Notebooks/
│   ├── H1.ipynb              ← Start here!
│   └── RSALearner.ipynb      ← Try this next
├── Class Materials/
│   └── CTC Class *.pdf       ← Read these
├── CTF Resources/
│   └── CTF-*.pdf             ← Practice challenges
├── Scripts/
│   ├── setup.sh              ← Run this to setup
│   └── setup.ps1             ← Windows setup
├── README.md                 ← Overview
├── COURSE_OUTLINE.md         ← Detailed syllabus
└── SETUP.md                  ← Full setup guide
```

## Need Help?

1. **Check documentation**

   - README.md - Project overview
   - SETUP.md - Detailed setup
   - COURSE_OUTLINE.md - Full syllabus

2. **Search existing issues**

   - [GitHub Issues](https://github.com/yourusername/CTC_PESU_IO/issues)

3. **Ask a question**

   - Open a new issue with the "question" label

4. **Join discussions**
   - [GitHub Discussions](https://github.com/yourusername/CTC_PESU_IO/discussions)

## Tips for Success

✅ **Do:**

- Work through exercises yourself
- Take notes as you learn
- Experiment with the code
- Ask questions when stuck
- Share your learnings

❌ **Don't:**

- Skip the fundamentals
- Just copy code without understanding
- Get discouraged by complexity
- Work in isolation - collaborate!

## Resources

### Essential Reading

- [README.md](README.md) - Start here
- [COURSE_OUTLINE.md](COURSE_OUTLINE.md) - Full curriculum
- [CONTRIBUTING.md](CONTRIBUTING.md) - How to contribute

### External Resources

- [Python Docs](https://docs.python.org/)
- [Jupyter Docs](https://jupyter.org/documentation)
- [CryptoHack](https://cryptohack.org/) - Practice challenges

## What's Next?

After completing the quick start:

1. ⭐ **Star the repository** if you find it helpful
2. 📖 **Read the full course outline** for the big picture
3. 💻 **Complete Week 1 materials** at your own pace
4. 🤝 **Join the community** and share your progress
5. 🚀 **Build projects** using what you learned

---

**Ready to become a cryptography expert? Let's crack some codes! 🔐**

Questions? Open an issue or start a discussion!

---

<div align="center">

[Full README](README.md) • [Setup Guide](SETUP.md) • [Course Outline](COURSE_OUTLINE.md)

</div>

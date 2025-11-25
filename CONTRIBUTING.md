# Contributing to Cracking the Code: Applied Cryptography

First off, thank you for considering contributing to this project! 🎉

This project aims to make quality cryptography education accessible to everyone. We welcome contributions from developers, educators, students, and security enthusiasts of all skill levels.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Getting Started](#getting-started)
- [Submission Guidelines](#submission-guidelines)
- [Style Guidelines](#style-guidelines)
- [Community](#community)

## 🤝 Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to the project maintainers.

### Our Standards

- **Be Respectful**: Treat everyone with respect and consideration
- **Be Constructive**: Provide constructive feedback
- **Be Collaborative**: Work together towards common goals
- **Be Inclusive**: Welcome newcomers and different perspectives
- **Be Patient**: Remember everyone is learning

## 🌟 How Can I Contribute?

### 1. Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates.

**Good Bug Reports Include:**

- Clear, descriptive title
- Steps to reproduce the issue
- Expected vs actual behavior
- Screenshots (if applicable)
- Environment details (OS, Python version, etc.)

**Template:**

```markdown
**Description:**
Brief description of the bug

**Steps to Reproduce:**

1. Step one
2. Step two
3. Step three

**Expected Behavior:**
What should happen

**Actual Behavior:**
What actually happens

**Environment:**

- OS: [e.g., macOS 13.0]
- Python Version: [e.g., 3.9.7]
- Notebook Version: [e.g., 6.4.0]
```

### 2. Suggesting Enhancements

We love enhancement suggestions! Please provide:

- Clear use case for the enhancement
- Detailed explanation of proposed functionality
- Examples of how it would work
- Potential implementation approach (if applicable)

### 3. Adding New Content

#### New Cipher Implementations

- Implement the cipher in Python
- Add comprehensive docstrings
- Include encryption and decryption functions
- Add example usage
- Write unit tests
- Update documentation

#### New Jupyter Notebooks

- Include clear explanations
- Add code comments
- Provide interactive examples
- Include visualizations where helpful
- Test thoroughly
- Add to README

#### Documentation Improvements

- Fix typos and grammatical errors
- Clarify confusing explanations
- Add missing information
- Improve code examples
- Translate documentation

### 4. Solving Existing Issues

Check our [Issues](https://github.com/yourusername/CTC_PESU_IO/issues) page for:

- `good first issue` - Good for newcomers
- `help wanted` - Need community assistance
- `bug` - Something isn't working
- `enhancement` - New feature or request
- `documentation` - Documentation improvements

## 🚀 Getting Started

### 1. Fork the Repository

Click the "Fork" button at the top right of the repository page.

### 2. Clone Your Fork

```bash
git clone https://github.com/YOUR-USERNAME/CTC_PESU_IO.git
cd CTC_PESU_IO
```

### 3. Create a Branch

```bash
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

Branch naming conventions:

- `feature/` - New features
- `fix/` - Bug fixes
- `docs/` - Documentation changes
- `refactor/` - Code refactoring
- `test/` - Test additions/modifications

### 4. Set Up Development Environment

```bash
# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Install development dependencies
pip install pytest black flake8 mypy
```

### 5. Make Your Changes

- Write clean, readable code
- Follow existing code style
- Add/update tests as needed
- Update documentation
- Test thoroughly

### 6. Test Your Changes

```bash
# Run tests
pytest

# Check code style
black .
flake8 .

# Type checking
mypy .

# Test notebooks
jupyter nbconvert --execute --to notebook --inplace *.ipynb
```

### 7. Commit Your Changes

```bash
git add .
git commit -m "Brief description of changes"
```

**Commit Message Guidelines:**

- Use present tense ("Add feature" not "Added feature")
- Use imperative mood ("Move cursor to..." not "Moves cursor to...")
- First line should be 50 characters or less
- Reference issues and pull requests after the first line

**Examples:**

```
Add Caesar cipher brute force function

- Implement brute_force_caesar() function
- Add tests for all possible shifts
- Update documentation

Fixes #123
```

### 8. Push to Your Fork

```bash
git push origin feature/your-feature-name
```

### 9. Create Pull Request

1. Go to your fork on GitHub
2. Click "New Pull Request"
3. Select your branch
4. Fill in the PR template
5. Submit the PR

## 📝 Submission Guidelines

### Pull Request Checklist

- [ ] Code follows project style guidelines
- [ ] Self-reviewed the code
- [ ] Commented code, particularly complex areas
- [ ] Updated documentation
- [ ] Added tests that prove fix/feature works
- [ ] New and existing tests pass locally
- [ ] No merge conflicts
- [ ] Linked relevant issues

### Pull Request Template

```markdown
## Description

Brief description of changes

## Type of Change

- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing

Describe testing performed

## Checklist

- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Commented code
- [ ] Updated documentation
- [ ] Added tests
- [ ] Tests pass
- [ ] No conflicts

## Related Issues

Fixes #(issue number)

## Screenshots (if applicable)

Add screenshots here
```

## 🎨 Style Guidelines

### Python Code Style

Follow [PEP 8](https://www.python.org/dev/peps/pep-0008/) guidelines:

```python
# Good
def caesar_encrypt(plaintext: str, shift: int) -> str:
    """
    Encrypt plaintext using Caesar cipher.

    Args:
        plaintext: Text to encrypt
        shift: Number of positions to shift

    Returns:
        Encrypted ciphertext

    Example:
        >>> caesar_encrypt("HELLO", 3)
        'KHOOR'
    """
    result = ""
    for char in plaintext:
        if char.isalpha():
            base = ord('A') if char.isupper() else ord('a')
            result += chr((ord(char) - base + shift) % 26 + base)
        else:
            result += char
    return result
```

### Documentation Style

- Use clear, concise language
- Include code examples
- Add mathematical formulas where relevant (using LaTeX in notebooks)
- Provide references for algorithms

### Jupyter Notebook Style

```python
# Cell 1: Title and Introduction
"""
# Caesar Cipher Implementation

This notebook demonstrates the Caesar cipher encryption technique.

## Algorithm Overview
The Caesar cipher shifts each letter by a fixed number of positions.
"""

# Cell 2: Imports
import numpy as np
from typing import str

# Cell 3: Implementation with clear comments
def caesar_encrypt(plaintext: str, shift: int) -> str:
    # Implementation with step-by-step comments
    pass

# Cell 4: Examples and Visualizations
# Show clear examples with outputs
```

## 🧪 Testing Guidelines

### Writing Tests

```python
import pytest

def test_caesar_encrypt_basic():
    """Test basic Caesar cipher encryption."""
    assert caesar_encrypt("ABC", 1) == "BCD"
    assert caesar_encrypt("XYZ", 3) == "ABC"

def test_caesar_encrypt_case_preservation():
    """Test that case is preserved."""
    assert caesar_encrypt("Hello", 1) == "Ifmmp"

def test_caesar_encrypt_non_alpha():
    """Test non-alphabetic characters are unchanged."""
    assert caesar_encrypt("Hello, World!", 1) == "Ifmmp, Xpsme!"
```

### Test Coverage

Aim for:

- Unit tests for all functions
- Edge case testing
- Error handling verification
- Integration tests for complex workflows

## 📚 Documentation Guidelines

### README Updates

- Keep README concise and scannable
- Use emojis appropriately (but don't overuse)
- Include code examples
- Update table of contents

### Code Comments

```python
# Good: Explain why, not what
# Calculate modular inverse using Extended Euclidean Algorithm
# This is necessary for RSA key generation
d = mod_inverse(e, phi)

# Bad: Obvious comment
# Calculate d
d = mod_inverse(e, phi)
```

## 🏆 Recognition

Contributors will be:

- Listed in CONTRIBUTORS.md
- Credited in release notes
- Mentioned in the README (for significant contributions)
- Given a shoutout on social media (if desired)

## 💬 Community

### Where to Ask Questions

- **GitHub Discussions**: General questions and discussions
- **GitHub Issues**: Bug reports and feature requests
- **Pull Request Comments**: Specific code discussions

### Getting Help

Need help contributing?

- Check existing documentation
- Look at previous PRs
- Ask in Discussions
- Reach out to maintainers

## 📜 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 🙏 Thank You!

Your contributions make this project better for everyone. Whether you're fixing a typo, adding a feature, or helping with documentation, every contribution is valued!

---

**Questions?** Feel free to open an issue or start a discussion. We're here to help! 😊

---

<div align="center">

[⬆ Back to Main README](README.md)

**Happy Contributing! 🎉**

</div>

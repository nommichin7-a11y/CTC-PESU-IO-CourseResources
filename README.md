# 🔐 Cracking the Code: Applied Cryptography for Engineers

![Cryptography](https://img.shields.io/badge/Cryptography-Applied-blue)
![Python](https://img.shields.io/badge/Python-3.x-green)
![License](https://img.shields.io/badge/License-MIT-yellow)
![Contributions](https://img.shields.io/badge/Contributions-Welcome-brightgreen)

> A comprehensive, month-long cryptography course designed for engineers and cybersecurity enthusiasts. Free and open-source educational resources.

## 📚 About This Repository

This repository contains all learning materials from an intensive one-month cryptography course taught by me, **Pranav Hemanth** with Subject Matter Expert **Pranavjeet Naidu** at PESU I/O. The course covers fundamental to advanced cryptographic concepts with hands-on implementations and CTF challenges.

**Our Mission**: Make quality cryptography education accessible to everyone, completely free of charge.

## 🎯 Course Overview

This comprehensive course spans **9 intensive sessions** covering:

- Classical Ciphers (Caesar, Vigenère, Substitution)
- Modern Symmetric Encryption (AES, DES)
- Asymmetric Cryptography (RSA)
- Hash Functions and Digital Signatures
- Quantum Computing & Post-Quantum Cryptography (PQC)
- Capture The Flag (CTF) Challenges
- Open Source Intelligence (OSINT) Techniques

## 📂 Repository Structure

```
CTC_PESU_I:O/
├── 📄 README.md                          # You are here!
├── 📄 LICENSE                            # MIT License
├── 📋 COURSE_OUTLINE.md                  # Detailed syllabus
├── 📋 QUICK_START.md                     # 5-minute getting started guide
├── 📋 SETUP.md                           # Comprehensive setup instructions
├── 📋 CONTRIBUTING.md                    # Contribution guidelines
├── 📋 CODE_OF_CONDUCT.md                 # Community standards
├── 📋 CHANGELOG.md                       # Version history
├── 📦 requirements.txt                   # Python dependencies
│
├── 📁 Class Materials/
│   ├── CTC Class 1 - Day 0.pdf          # Introduction to Cryptography
│   ├── CTC Class 2 - Day 1.pdf          # Classical Ciphers
│   ├── CTC Class 3 - Day 2.pdf          # Frequency Analysis
│   ├── CTC Class 4 - Day 3.pdf          # Modern Encryption
│   ├── CTC Class 5 - Day 4.pdf          # RSA & Public Key Crypto
│   ├── CTC Class 6 - Day 5.pdf          # Digital Signatures
│   ├── CTC Class 7 - Day 6.pdf          # Hash Functions
│   ├── CTC Class 8 - Day 7.pdf          # Advanced Topics
│   └── CTC Class 9 - Day 8.pdf          # Quantum & PQC
│
├── 📁 Notebooks/
│   ├── H1.ipynb                         # Caesar & Vigenère Cipher Implementations
│   ├── H3.ipynb                         # Cipher Analysis Homework
│   ├── H4.ipynb                         # Advanced Cryptanalysis
│   └── RSALearner.ipynb                 # Interactive RSA Learning Tool
│
├── 📁 CTF Resources/
│   ├── CTF-Crash-Course-Part-1.pdf      # CTF Fundamentals
│   ├── CTF-Crash-Course-Part-2.pdf      # Intermediate Techniques
│   ├── CTF-Crash-Course-Part-3.pdf      # Advanced Strategies
│   └── Capture-The-Flag-A-Cybersecurity-Masterclass.pdf
│
├── 📁 Supplementary Materials/
│   ├── Quantum Computing and PQC.pdf    # Quantum Computing & Post-Quantum Crypto
│   ├── What_is_OSINT.pdf               # OSINT Introduction
│   ├── Question_ Frequency Analysis... # Frequency analysis exercises
│   └── Pranav Hemanth & Pranavjeet Naidu_Cracking the Code...pdf  # Course certificate
│
├── 📁 Scripts/
│   ├── setup.sh                         # Automated setup for macOS/Linux
│   └── setup.ps1                        # Automated setup for Windows
│
└── 📁 .github/
    ├── ISSUE_TEMPLATE/                  # Issue templates
    └── PULL_REQUEST_TEMPLATE.md         # PR template
```

## 🚀 Getting Started

### Prerequisites

- Python 3.x
- Jupyter Notebook or JupyterLab
- Basic understanding of programming concepts
- Enthusiasm for cryptography! 🔥

### Installation

1. **Clone this repository**

```bash
git clone https://github.com/yourusername/CTC_PESU_IO.git
cd CTC_PESU_IO
```

2. **Set up Python environment** (recommended)

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. **Install required packages**

```bash
pip install -r requirements.txt
```

4. **Launch Jupyter Notebooks**

```bash
jupyter notebook
```

## 📖 Course Content

### Week 1: Foundations

- **Day 0**: Introduction to Cryptography & Security Principles
- **Day 1**: Classical Ciphers (Caesar, Substitution)
- **Day 2**: Frequency Analysis & Cryptanalysis

### Week 2: Modern Cryptography

- **Day 3**: Symmetric Encryption (AES, DES, Block Ciphers)
- **Day 4**: RSA & Asymmetric Cryptography
- **Day 5**: Digital Signatures & Certificates

### Week 3: Advanced Topics

- **Day 6**: Hash Functions & Message Authentication
- **Day 7**: Applied Cryptography in Real Systems
- **Day 8**: Quantum Computing & Post-Quantum Cryptography

### Week 4: Practical Applications

- CTF Challenges & Competitions
- OSINT Techniques
- Real-world Security Analysis

## 💻 Jupyter Notebooks

### Interactive Learning Tools

1. **H1.ipynb**: Caesar & Vigenère Cipher

   - Implementation from scratch
   - Encryption/Decryption functions
   - Brute force analysis

2. **RSALearner.ipynb**: RSA Cryptosystem

   - Key generation visualization
   - Prime number selection
   - Encryption/Decryption demonstrations
   - Interactive widgets for learning

3. **H3.ipynb & H4.ipynb**: Advanced Exercises
   - Cryptanalysis challenges
   - Frequency analysis tools
   - Practical problem-solving

## 🏆 CTF Resources

This course includes comprehensive Capture The Flag training materials:

- **CTF Crash Course (3 Parts)**: Progressive difficulty levels
- **Cybersecurity Masterclass**: In-depth competition strategies
- Practical challenges and walkthroughs
- Tools and techniques for competitive cybersecurity

## 🌟 Key Features

- ✅ **100% Free**: All materials open-source and freely available
- 📝 **Hands-on**: Python implementations of all algorithms
- 🎓 **Comprehensive**: From basics to quantum-resistant cryptography
- 🔬 **Practical**: Real-world applications and CTF challenges
- 📊 **Interactive**: Jupyter notebooks with visualizations
- 🌐 **Modern**: Includes latest trends (Quantum Computing, PQC)

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

1. **Fork** the repository
2. **Create** a feature branch (`git checkout -b feature/AmazingFeature`)
3. **Commit** your changes (`git commit -m 'Add some AmazingFeature'`)
4. **Push** to the branch (`git push origin feature/AmazingFeature`)
5. **Open** a Pull Request

### Contribution Ideas

- Add more cipher implementations
- Improve documentation
- Create additional exercises
- Fix bugs or typos
- Add translations

## 📜 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Authors & Instructors

- **Pranav Hemanth** - Subject Matter Expert & Course Instructor
  - GitHub: [@pranavhemanth](https://github.com/pranavhemanth)
- **Pranavjeet Naidu** - Subject Matter Expert & Course Instructor
  - GitHub: [@pranavjeetnaidu](https://github.com/Pranavjeet-Naidu)

## 🙏 Acknowledgments

- PESU I/O for hosting the course
- All students who participated and provided feedback
- The open-source cryptography community
- Contributors to this repository

## 📧 Contact & Support

- **Issues**: Please use the [GitHub Issues](https://github.com/yourusername/CTC_PESU_IO/issues) page
- **Discussions**: Join our [GitHub Discussions](https://github.com/yourusername/CTC_PESU_IO/discussions)
- **Email**: [your.email@example.com]

## 🌐 Additional Resources

### Recommended Reading

- [Introduction to Modern Cryptography](https://www.cs.umd.edu/~jkatz/imc.html) by Katz & Lindell
- [Cryptography Engineering](https://www.schneier.com/books/cryptography-engineering/) by Ferguson, Schneier & Kohno
- [Applied Cryptography](https://www.schneier.com/books/applied-cryptography/) by Bruce Schneier

### Online Tools

- [CyberChef](https://gchq.github.io/CyberChef/) - The Cyber Swiss Army Knife
- [dCode](https://www.dcode.fr/en) - Cipher tools and solvers
- [CrypTool](https://www.cryptool.org/) - E-learning platform for cryptography

### Practice Platforms

- [CryptoHack](https://cryptohack.org/) - Learn cryptography through challenges
- [OverTheWire](https://overthewire.org/) - Wargames for security learning
- [picoCTF](https://picoctf.org/) - Beginner-friendly CTF platform

## 📊 Course Statistics

- **Duration**: 1 Month (9 Sessions)
- **Format**: Hybrid (Theory + Practical)
- **Difficulty**: Beginner to Advanced
- **Languages**: Python
- **Total Materials**: 20+ PDFs, 4 Notebooks

## 🔮 Future Plans

- [ ] Additional programming challenges
- [ ] Advanced quantum cryptography module
- [ ] Blockchain cryptography section

## ⭐ Show Your Support

If you found this course helpful, please:

- ⭐ **Star** this repository
- 🔄 **Share** with others interested in cryptography
- 🐛 **Report** any issues you find
- 💡 **Suggest** improvements or new features

---

<div align="center">

**Made with ❤️ for the cryptography community**

_"In cryptography, we trust... but verify!"_ 🔐

[⬆ back to top](#-cracking-the-code-applied-cryptography-for-engineers)

</div>

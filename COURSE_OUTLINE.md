# 📋 Course Outline: Cracking the Code - Applied Cryptography for Engineers

## Course Information

**Duration:** 1 Month (9 Sessions)  
**Level:** Beginner to Advanced  
**Format:** Theory + Hands-on Implementation  
**Instructors:** Pranav Hemanth (Instructor), Pranavjeet Naidu (SME)  
**Institution:** PESU I/O

---

## 📅 Weekly Breakdown

### Week 1: Foundations of Cryptography

#### **Day 0: Introduction to Cryptography**

_Class Material: CTC Class 1 - Day 0.pdf_

**Topics Covered:**

- What is Cryptography?
- Historical Context & Importance
- Security Principles: Confidentiality, Integrity, Availability (CIA Triad)
- Types of Cryptographic Systems
- Course Structure & Expectations

**Learning Objectives:**

- Understand the fundamental concepts of cryptography
- Recognize the importance of cryptography in modern computing
- Differentiate between symmetric and asymmetric encryption

---

#### **Day 1: Classical Ciphers**

_Class Material: CTC Class 2 - Day 1.pdf_  
_Notebook: H1.ipynb_

**Topics Covered:**

- Caesar Cipher
  - Implementation
  - Encryption/Decryption process
  - Brute force attacks
- Substitution Ciphers
- Vigenère Cipher
  - Polyalphabetic substitution
  - Key-based encryption
  - Breaking Vigenère cipher

**Learning Objectives:**

- Implement classical ciphers in Python
- Understand shift-based encryption
- Perform basic cryptanalysis

**Hands-on Activities:**

- Caesar cipher implementation
- Brute force attack simulation
- Vigenère cipher with custom keys

---

#### **Day 2: Frequency Analysis & Cryptanalysis**

_Class Material: CTC Class 3 - Day 2.pdf_  
_Supplementary: Question\_ Frequency Analysis on Monoalphabetic Substitution Cipher.pdf_  
_Notebook: H3.ipynb_

**Topics Covered:**

- Frequency Analysis Techniques
- Monoalphabetic Substitution Cipher Analysis
- Statistical Attack Methods
- Pattern Recognition in Ciphertext
- Breaking Classical Ciphers

**Learning Objectives:**

- Apply frequency analysis to break substitution ciphers
- Understand statistical properties of natural language
- Develop cryptanalysis skills

**Hands-on Activities:**

- Frequency distribution analysis
- Breaking monoalphabetic ciphers
- Automated cryptanalysis tools

---

### Week 2: Modern Cryptographic Systems

#### **Day 3: Symmetric Encryption**

_Class Material: CTC Class 4 - Day 3.pdf_

**Topics Covered:**

- Block Ciphers vs Stream Ciphers
- Data Encryption Standard (DES)
  - Structure and operation
  - Feistel network
  - Security limitations
- Advanced Encryption Standard (AES)
  - SubBytes, ShiftRows, MixColumns, AddRoundKey
  - Key expansion
  - AES modes of operation (ECB, CBC, CTR, GCM)
- Modern Symmetric Algorithms

**Learning Objectives:**

- Understand block cipher design principles
- Compare DES and AES
- Implement basic AES operations
- Choose appropriate encryption modes

**Hands-on Activities:**

- AES encryption/decryption
- Mode comparison experiments
- Performance analysis

---

#### **Day 4: RSA & Asymmetric Cryptography**

_Class Material: CTC Class 5 - Day 4.pdf_  
_Notebook: RSALearner.ipynb_

**Topics Covered:**

- Public Key Cryptography Concepts
- RSA Algorithm
  - Key generation (prime selection, modulus calculation)
  - Encryption and decryption
  - Mathematical foundations (Euler's totient, modular arithmetic)
- Key Exchange Protocols
- Diffie-Hellman Key Exchange
- Elliptic Curve Cryptography (ECC) Introduction

**Learning Objectives:**

- Understand asymmetric encryption principles
- Implement RSA key generation
- Perform RSA encryption/decryption
- Comprehend the mathematics behind RSA

**Hands-on Activities:**

- Interactive RSA key generation (RSALearner.ipynb)
- Prime number selection
- Encrypt/decrypt messages with RSA
- Attack small RSA keys (factorization)

---

#### **Day 5: Digital Signatures & Certificates**

_Class Material: CTC Class 6 - Day 5.pdf_

**Topics Covered:**

- Digital Signature Algorithms (DSA, ECDSA)
- Public Key Infrastructure (PKI)
- X.509 Certificates
- Certificate Authorities (CA)
- SSL/TLS Protocol
- Message Authentication Codes (MAC)
- Non-repudiation

**Learning Objectives:**

- Create and verify digital signatures
- Understand PKI hierarchy
- Analyze SSL/TLS handshake
- Implement message authentication

**Hands-on Activities:**

- Generate digital signatures
- Certificate chain validation
- SSL/TLS inspection

---

### Week 3: Advanced Topics

#### **Day 6: Hash Functions**

_Class Material: CTC Class 7 - Day 6.pdf_

**Topics Covered:**

- Cryptographic Hash Functions
- Hash Function Properties (preimage resistance, collision resistance)
- Common Hash Algorithms
  - MD5 (and its vulnerabilities)
  - SHA family (SHA-1, SHA-2, SHA-3)
  - Modern alternatives (BLAKE2, BLAKE3)
- Birthday Attack
- Rainbow Tables
- Password Hashing (bcrypt, scrypt, Argon2)
- HMAC (Hash-based Message Authentication Code)

**Learning Objectives:**

- Understand hash function properties
- Compare different hash algorithms
- Implement secure password hashing
- Recognize hash vulnerabilities

**Hands-on Activities:**

- Hash collision demonstrations
- Password cracking simulation
- HMAC implementation
- Rainbow table attacks

---

#### **Day 7: Applied Cryptography**

_Class Material: CTC Class 8 - Day 7.pdf_

**Topics Covered:**

- Cryptography in Real-World Systems
- Secure Communication Protocols
- Key Management Systems
- Hardware Security Modules (HSM)
- Cryptographic Protocols
  - Kerberos
  - IPsec
  - PGP/GPG
- Side-Channel Attacks
- Timing Attacks
- Best Practices in Implementation

**Learning Objectives:**

- Apply cryptography to real systems
- Understand protocol design
- Recognize implementation vulnerabilities
- Follow security best practices

**Hands-on Activities:**

- Protocol analysis
- Secure communication setup
- Side-channel attack demonstrations

---

#### **Day 8: Quantum Computing & Post-Quantum Cryptography**

_Class Material: CTC Class 9 - Day 8.pdf_  
_Supplementary: Quantum Computing and PQC.pdf_

**Topics Covered:**

- Quantum Computing Fundamentals
- Qubits and Quantum Gates
- Shor's Algorithm (RSA breaking)
- Grover's Algorithm (symmetric key search)
- Threat to Current Cryptography
- Post-Quantum Cryptography (PQC)
  - Lattice-based cryptography
  - Code-based cryptography
  - Multivariate cryptography
  - Hash-based signatures
- NIST PQC Standardization
- Quantum Key Distribution (QKD)

**Learning Objectives:**

- Understand quantum computing threats
- Explore post-quantum algorithms
- Prepare for quantum-resistant systems
- Follow NIST PQC standards

**Hands-on Activities:**

- Quantum algorithm simulations
- PQC algorithm implementations
- Security assessment exercises

---

### Week 4: Practical Applications

#### **CTF (Capture The Flag) Training**

_Materials:_

- _CTF-Crash-Course-Part-1.pdf_
- _CTF-Crash-Course-Part-2.pdf_
- _CTF-Crash-Course-Part-3.pdf_
- _Capture-The-Flag-A-Cybersecurity-Masterclass.pdf_

**Topics Covered:**

- CTF Competition Overview
- Cryptography Challenges
- Tool Usage and Techniques
- Challenge Categories
  - Classical cipher breaking
  - Modern encryption analysis
  - Hash cracking
  - Steganography
  - Miscellaneous crypto challenges
- Competition Strategies
- Write-up Creation

**Learning Objectives:**

- Solve cryptography CTF challenges
- Use industry-standard tools
- Develop problem-solving strategies
- Participate in competitions

**Hands-on Activities:**

- Practice CTF challenges
- Team-based problem solving
- Tool demonstrations (CyberChef, hashcat, John the Ripper)
- Real competition participation

---

#### **OSINT (Open Source Intelligence)**

_Material: What_is_OSINT.pdf_

**Topics Covered:**

- OSINT Fundamentals
- Information Gathering Techniques
- Social Media Intelligence
- Search Engine Techniques
- Metadata Analysis
- OSINT Tools and Frameworks
- Privacy and Ethics
- OSINT in Cryptography Context

**Learning Objectives:**

- Conduct OSINT investigations
- Use OSINT tools effectively
- Understand privacy implications
- Apply OSINT to security research

**Hands-on Activities:**

- OSINT challenges
- Tool demonstrations
- Metadata extraction
- Information correlation

---

## 🎯 Learning Outcomes

By the end of this course, students will be able to:

1. **Implement** classical and modern cryptographic algorithms
2. **Analyze** cryptographic systems for vulnerabilities
3. **Apply** appropriate encryption techniques to real-world scenarios
4. **Evaluate** the security of cryptographic implementations
5. **Design** secure communication protocols
6. **Solve** cryptography-based CTF challenges
7. **Understand** quantum computing threats and post-quantum solutions
8. **Use** industry-standard cryptographic tools and libraries

---

## 📚 Required Skills

### Prerequisites

- Basic programming knowledge (Python preferred)
- Understanding of basic mathematics (algebra, modular arithmetic)
- Familiarity with command line/terminal
- Logical thinking and problem-solving skills

### Recommended Background

- Computer Science fundamentals
- Network security basics
- Interest in mathematics and algorithms

---

## 🛠️ Tools & Technologies

### Programming Languages

- Python 3.x (primary)
- Bash/Shell scripting

### Libraries & Frameworks

- `cryptography` - Python cryptography library
- `pycryptodome` - Cryptographic primitives
- `sympy` - Symbolic mathematics
- `numpy` - Numerical computing
- `ipywidgets` - Interactive Jupyter widgets

### Tools

- Jupyter Notebook/Lab
- CyberChef
- Hashcat
- John the Ripper
- OpenSSL
- Wireshark
- Git/GitHub

---

## 📊 Assessment Methods

### Homework Assignments

- **H1.ipynb**: Classical cipher implementations
- **H3.ipynb**: Frequency analysis exercises
- **H4.ipynb**: Advanced cryptanalysis

### Projects

- RSA implementation with visualization
- CTF challenge solutions
- Research paper on PQC

### Final Assessment

- Comprehensive CTF competition
- Capstone project presentation

---

## 📖 Recommended Reading

### Books

1. "Introduction to Modern Cryptography" - Katz & Lindell
2. "Applied Cryptography" - Bruce Schneier
3. "Cryptography Engineering" - Ferguson, Schneier & Kohno
4. "Serious Cryptography" - Jean-Philippe Aumasson

### Online Resources

1. Cryptopals Challenges (https://cryptopals.com)
2. CryptoHack (https://cryptohack.org)
3. NIST Cryptographic Standards
4. Academic papers on recent developments

---

## 💡 Course Philosophy

This course emphasizes:

1. **Hands-on Learning**: Every concept includes practical implementation
2. **Security First**: Understanding vulnerabilities alongside implementations
3. **Real-World Application**: Focus on practical, industry-relevant skills
4. **Open Source**: All materials freely available for community benefit
5. **Continuous Learning**: Foundation for ongoing cryptography education

---

## 🔄 Course Updates

This course outline is continuously updated to reflect:

- Latest cryptographic research
- Emerging threats and vulnerabilities
- New tools and techniques
- Student feedback and suggestions

**Last Updated:** November 2025

---

## 📞 Support & Questions

For questions about the course content:

- Open an issue on GitHub
- Join the discussion forums
- Contact the instructors

**Remember:** The goal is not just to learn cryptography, but to think like a cryptographer! 🔐

---

<div align="center">

[⬆ Back to Main README](README.md)

</div>

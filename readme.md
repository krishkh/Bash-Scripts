# 🔥 KillPort - Kill Processes Running on a Port

A simple script to **kill processes** occupying specified ports on Windows using **Git Bash (MINGW64)**.

## 📌 How to Use

### 1️⃣ **Make the Script Executable**

First, ensure the script has execution permissions:

```bash
chmod +x killport.sh
```

### 2️⃣ **Run the Script**

To kill a specific port, use:

```bash
./killport.sh <port_number>
```

For example, to **kill port 3000**:

```bash
./killport.sh 3000
```

### 3️⃣ **Kill Multiple Ports at Once**

You can also kill multiple ports in a single command:

```bash
./killport.sh 3000 3001 5000
```

## ✅ Features

✔️ Supports multiple ports at once  
✔️ Checks if the port is in use before attempting to kill  
✔️ Provides **clear status messages** (Success, Already Closed, or Failed)

## ⚙️ Setup for Global Use

To run this script from **any directory**, add it to your **PATH**:

```bash
echo 'export PATH=$PATH:~/' >> ~/.bashrc
source ~/.bashrc
```

Now, you can simply run:

```bash
killport.sh <port_number>
```

from anywhere in your terminal.

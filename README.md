# 🖥️ Process Monitor Menu (Bash)

A simple interactive **Bash menu tool** that helps you explore what’s running on your Linux system using the `ps` command — without having to remember long command options.

This script is especially useful if you want a **quick, readable view of running processes**, CPU usage, memory usage, and runtime details.

---

## ✨ Features

* Interactive menu (no arguments required)
* Sorts processes by **CPU usage**
* Displays output in a **scrollable and searchable view** using `less`
* Explains process fields in plain English
* Works on most Linux distributions

---

## 📋 Menu Options Explained

When you run the script, you’ll see four choices:

### **a) What’s Running and Using My Computer?**

Shows:

* Process ID (PID)
* User running the process
* CPU usage (%CPU)
* Memory usage (%MEM)
* Program name (COMM)

👉 Best for getting a **quick snapshot** of system activity.

---

### **b) Which Programs Are Heavy or Slow?**

Shows everything in option **a**, plus:

* How long each program has been running (ETIME)

👉 Useful for spotting **long-running or resource-hungry programs**.

---

### **c) When Programs Started and How Long They’ve Been Running?**

Shows:

* Exact start date and time (LSTART)
* Runtime duration (ETIME)

👉 Ideal for understanding **startup behavior** and tracking background services.

---

### **q) Quit**

Exits the program cleanly.

---

## 🧠 Output Legend

Each column in the output means:

* **PID** → Internal ID number for the program
* **USER** → Account running the program
* **%CPU** → CPU usage
* **%MEM** → Memory (RAM) usage
* **LSTART** → Exact date and time the program started
* **ETIME** → How long the program has been running
* **STAT** → Current process state
* **COMM** → Program name

---

## 🔎 Navigation Tips (Inside Results)

When viewing output:

* Use **arrow keys** or **mouse wheel** to scroll
* Press `/` to search (then Enter)

  * Press `n` → next match
  * Press `N` → previous match
* Press **`q`** to exit the viewer

---

## 🚀 How to Run

1. Make the script executable:

```bash
chmod +x process_info.sh
```

2. Run it:

```bash
./process_info.sh
```

---

## 📦 Requirements

* Bash
* `ps` (part of `procps`)
* `less`

These are installed by default on most Linux systems.

---



## 📄 License

MIT License (or add your preferred license here)

---



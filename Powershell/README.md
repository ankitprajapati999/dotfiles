# ⚡ Ultimate PowerShell Setup — One-Shot Guide (Clean • Aesthetic • Based)

This is the **single, combined README**. No fragments. No jumping around.  
Follow top → bottom once and your PowerShell will look *chef’s kiss*.

---

## 🧠 Requirements
- Windows 10 / 11  
- Internet connection  
- Willingness to abandon ugly terminals

---

## 🚀 Complete Setup (Do It In Order)

### 1️⃣ Install PowerShell 7+
- Open **Microsoft Store**
- Search **PowerShell**
- Install **PowerShell 7.0+**

---

### 2️⃣ Set PowerShell as Default in Windows Terminal
- Open **Windows Terminal**
- Click the **dropdown (˅)** on the top bar
- Select the **newly installed PowerShell**
- Close Windows Terminal

---

### 3️⃣ Restart Windows Terminal
Yes. Close it.  
Yes. Open it again.

---

### 4️⃣ Open Terminal Settings (JSON Mode)
- Open **Windows Terminal**
- Open **Settings**
- Look at the **bottom-left**
- Click the ⚙️ **gear icon → Open JSON file**

---

### 5️⃣ Replace `settings.json`
- Select everything → `Ctrl + A`
- Delete it
- Copy the **custom `settings.json` from this repo**
- Paste it
- Save the file

---

### 6️⃣ Restart Windows Terminal (Again)
Reload or it won’t hit.

---

### 7️⃣ 🎉 Custom PowerShell Activated
Congrats. Your terminal now has drip.

---

## 🗂️ PowerShell Profile Setup (Important)

### 8️⃣ Create Required Directories
When PowerShell opens, you’ll be in: ~/

Now do this:
- Create `.config`
- Go inside `.config`
- Create `powershell`

Final path should be: ~/.config/powershell/



---

### 9️⃣ Add Profile Script
- From the **cloned repo**

- Copy: user_profile.ps1

- Paste it into: ~/.config/powershell/


---

## 🎨 Install Required Modules
- Inside the repo there is a **module install script**
- Run it to install:
- Terminal icons
- Git enhancements
- Prompt theming
- Aesthetic magic ✨

---

### 🔁 Final Restart
Restart **Windows Terminal** one last time.

---

## ✅ Done.
You now have a **clean, modern, flex-ready PowerShell setup**.

If anything breaks:
- Check PowerShell version: '$PSVersionTable'
- Re-run the module installer
- Restart the terminal (yeah, again)

---

Enjoy the glow-up ⚡🖤



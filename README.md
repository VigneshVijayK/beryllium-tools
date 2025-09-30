# ROM Flashing Toolkit for Beryllium /POCOPHONE F1/POCO F1

This project is a **lightweight flashing toolkit** for the Xiaomi **Poco F1**, created as an **alternative to Mi Flash Tool**.  
Mi Flash Tool is known to frequently throw errors during the flashing process.
This tool required **bootloader** unlocked device and this tool **will not lock bootloader**.
This toolkit uses **ADB & Fastboot** directly, with a simple automated batch script, making it **more stable and error-free**.

---
---

## 📂 Project Structure
- **Readme.md** – Quick setup instructions
- **runme.bat** – Batch script to automate the process
- **platform-tools/** – ADB/Fastboot binaries here
- **rom.tgz** – The ROM archive (not included, user must provide)

---

## 🚀 Usage

## Method 1
1. Extract your `rom.tgz` or `rom.zip` into the project directory.
2. Extract **beryllium-tools** extracted `rom/` folder.
3. Run the batch script:
   runme.bat

## Method 2
1. Extract your `rom.tgz` or `rom.zip` into the project directory.
2. Extract your `beryllium-tools` into the project directory.
3. Copy `images` folder from extracted rom folder to `beryllium-tools\images`.
4. Run the batch script:
   runme.bat

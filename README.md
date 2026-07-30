# Windows Batch Scripts Collection

Welcome to my personal collection of handy Windows Batch (`.bat`) scripts! These scripts are designed to automate common daily tasks, from searching the web to managing system operations.

## 🚀 Scripts Overview

Here's a quick look at what each script does:

### Web & Search Utilities
- **`chat.bat`**: Prompts you for a query and instantly opens a new **ChatGPT** session in a Google Chrome incognito window.
- **`drive.bat`**: Quickly opens **Google Drive** in a Brave Browser incognito window.
- **`github.bat`**: Opens my GitHub profile directly in your default browser.
- **`pin.bat`**: Asks for a search term and searches **Pinterest** using the Brave Browser.
- **`sr.bat`**: A quick Google search utility. Simply run `sr <your search terms>` from the command line to open Google results.
- **`yt.bat`**: A fast YouTube search tool. Run `yt <your search terms>` to instantly search YouTube from the command prompt.

### System & Installation
- **`braveinstall.bat`**: Automates the installation of the **Brave Browser** using `winget` and launches it immediately upon completion.
- **`shutdown.bat`**: A force-shutdown utility. It aggressively closes all running applications and immediately turns off your computer. *(Use with caution!)*

## 🛠️ Usage

To use these scripts effectively, you can:
1. Double-click on any script (like `chat.bat` or `drive.bat`) to run it interactively.
2. Run them from the Command Prompt. For scripts like `sr.bat` and `yt.bat` which accept arguments, command-line usage is recommended:
   ```cmd
   yt funny cat videos
   sr how to write a batch script
   ```

**Pro Tip:** Add the folder containing these scripts to your system's `PATH` environment variable so you can run them from anywhere in the command prompt!

## ⚠️ Requirements
- Windows OS (Windows 10/11 recommended).
- Some scripts require specific browsers installed (e.g., Google Chrome, Brave).
- `braveinstall.bat` requires `winget` (Windows Package Manager).
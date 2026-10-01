# Windows Batch Scripts Collection

Welcome to my personal collection of handy Windows Batch (.bat) scripts. These scripts are designed to automate common daily tasks, from searching the web to managing system operations.

## Scripts Overview and How They Work

Here is a detailed explanation of each script and its underlying mechanics:

### Web & Search Utilities

- **`chat.bat`**: 
  - **Purpose**: Opens a new ChatGPT session in a Google Chrome incognito window with a provided prompt.
  - **How it works**: It uses `set /p` to prompt the user for input. It then dynamically replaces all spaces in the query string with `%20` (URL encoding) and executes the `start chrome --incognito` command with the formatted ChatGPT search URL.

- **`marvelcaption.bat`**: 
  - **Purpose**: Opens a specific existing ChatGPT conversation in Brave Browser and pre-fills it with a provided prompt.
  - **How it works**: It captures user input with `set /p`, URL-encodes spaces, and launches `brave.exe` targeting the specific ChatGPT conversation URL.

- **`drive.bat`**: 
  - **Purpose**: Quickly opens Google Drive in a Brave Browser incognito window.
  - **How it works**: It directly calls the `start` command targeting the `brave.exe` executable with the `--incognito` flag and the Google Drive URL.

- **`github.bat`**: 
  - **Purpose**: Opens my GitHub profile directly in the default browser.
  - **How it works**: It uses the `start` command with the GitHub profile URL, which prompts the Windows shell to open it in the default system browser.

- **`pin.bat`**: 
  - **Purpose**: Asks for a search term and searches Pinterest using the Brave Browser.
  - **How it works**: Uses `set /p` to request a search query from the user. It then executes the `start` command to launch `brave.exe`, passing the search term directly into the Pinterest search URL parameters.

- **`sr.bat`**: 
  - **Purpose**: A quick Google search utility run from the command line.
  - **How it works**: This script takes parameters passed directly from the command line (e.g., `sr hello world`). It uses a loop (`:loop`) to iterate through all provided arguments (`%~1`), concatenating them together with a `+` sign. Finally, it uses `start` to open the constructed Google search URL.

- **`yt.bat`**: 
  - **Purpose**: A fast YouTube search tool run from the command prompt.
  - **How it works**: Similar to `sr.bat`, it loops through command-line arguments to build a search query string by joining words with a `+`. It then launches the default browser with the generated YouTube search URL.

### System & Installation

- **`braveinstall.bat`**: 
  - **Purpose**: Automates the installation of the Brave Browser using winget and launches it immediately upon completion.
  - **How it works**: First, it checks if `winget` (Windows Package Manager) is available using the `where` command. If found, it runs the `winget install` command specifically targeting `Brave.Brave` with flags to automatically accept package and source agreements. Upon success (`%errorlevel% equ 0`), it launches the installed executable.

- **`shutdown.bat`**: 
  - **Purpose**: A force-shutdown utility that aggressively closes all running applications and immediately turns off the computer.
  - **How it works**: It executes `taskkill /F /FI "STATUS eq RUNNING"` to forcefully terminate active processes. It then issues the `shutdown /s /f /t 0` command to halt the system immediately (0 seconds delay).

## Usage

To use these scripts effectively, you can:
1. Double-click on any script (like `chat.bat` or `drive.bat`) to run it interactively.
2. Run them from the Command Prompt. For scripts like `sr.bat` and `yt.bat` which accept arguments, command-line usage is recommended:
   ```cmd
   yt funny cat videos
   sr how to write a batch script
   ```

**Pro Tip:** Add the folder containing these scripts to your system's `PATH` environment variable so you can run them from anywhere in the command prompt.

## Requirements
- Windows OS (Windows 10/11 recommended).
- Some scripts require specific browsers installed (e.g., Google Chrome, Brave).
- `braveinstall.bat` requires `winget` (Windows Package Manager).
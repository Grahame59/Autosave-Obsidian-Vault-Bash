# Autosave.Bat Script for Obsidian Vault
## Version: 1.0.0
## Author: IceTeaGameDev (Grahame59)

### Overview
The `autosave.bat` script is designed to automate the process of saving changes to your Git repository within an Obsidian Vault. This script simplifies the workflow by allowing you to pull the latest changes, stage all modifications, commit them with a message, and push to your chosen branch (typically `main` or `master`).

### Features
- `Cross-Platform Compatibility:` You can run the script in a Bash environment, Command Prompt, or by double-clicking the file. It can also be called from other processes, such as a subprocess in Python or scheduled tasks in Windows.
- `Concurrency Support:` The script ensures that you have the latest changes from the remote repository before committing your modifications.
- `Simplicity:` The script handles all necessary Git commands in a straightforward manner, making it easy for users of all skill levels.

### Prerequisites
Before using the `autosave.bat` script, ensure you have the following:

- `Git Installed:` Make sure you have Git installed on your system. You can download it from git-scm.com.
- `Obsidian Vault Set Up:` Your Obsidian Vault should be initialized as a Git repository. If you haven’t done this yet, navigate to your vault directory in the command line and run:
''' bash
git init
'''

### Setup Instructions
1. `Clone or Download the Script:` Get a copy of the autosave.bat script and save it in a directory that’s convenient for you.

2. Edit the Script:

- Open the `autosave.bat` file in a text editor.
- Locate the following line:
''' bat
cd /d "E:\Lorehaven\gitconnect"
'''
` Change the path to point to your local Obsidian Vault Git directory. For example:
''' bat
cd /d "C:\Path\To\Your\Obsidian\Vault"
'''
- Save Changes: After editing the path, save the changes to the autosave.bat file.

### Usage
To use the script, follow these steps:

- Run the Script:

    - You can double-click the autosave.bat file, or run it in a Command Prompt or PowerShell window by navigating to the directory where the script is located and executing:
''' bat
autosave.bat
'''
- Script Execution:

    1. The script will execute the following steps:
    2. Change to the specified repository directory.
    3. Pull the latest changes from the remote repository (origin/main).
    4. Stage all changes in the directory.
    5. Commit the changes with the message "autosave".
    6. Push the changes to the remote repository.

### Error Handling
The script includes error handling for each step. If any command fails, it will print an error message and exit the script gracefully.

### Output
Upon successful completion, you will see the message:

''' txt
Autosave completed successfully.
'''

### Conclusion
The 'autosave.bat' script is a simple and hopefully easy to use tool for automating your workflow within an Obsidian Vault. By streamlining the process of saving changes to your Git repository, it allows you to focus more on your work and less on manual version control tasks. I personally have a chatbot I am building and I have my chatbot perform automatic execution of the 'autosave.bat' script for ease when I am coding and multi-tasking taking notes. It only saves you a few lines of typing and a few seconds but as a first intro to automating something with a script this is a good script to help you learn a little as well as speed up your processes. 

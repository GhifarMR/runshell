# RunShell 🏁

A lightweight, efficient shell script utility designed to automate the process of executing shell scripts. It automatically checks for file existence, manages user execution permissions (`chmod u+x`), and runs the target script instantly with a single command.

## 📌 Features
* **Argument Validation:** Ensures a filename parameter is provided before attempting execution.
* **File Existence Verification:** Prevents execution errors by checking if the file actually exists in the local directory.
* **Smart Permission Management:** Dynamically checks if the file has execute permissions. If not, it automatically grants `chmod u+x` to the user.
* **Seamless Execution:** Runs the script immediately after ensuring permissions are set properly.

## 🛠️ Installation & Setup
To use this utility globally across your macOS system (Apple Silicon ARM64), you just need to source the script file directly inside your main Zsh configuration.

### 1. Connect your `.zshrc` config to shell
Open your Zsh profile configuration using your preferred terminal editor:

```zsh
nano ~/.zshrc
```
### 2. Scroll to the very bottom of the file and add the following line to link your script dynamically:
```Bash
source ~/ShellScript/runshell.sh
```
Save and exit the editor (⌃O -> ↩ -> ⌃X).

## 🚀 Usage
Now you can run any of your shell practice scripts from any directory without manually typing chmod or ./ ever again!
```Bash
runshell your_script.sh
```

## 📄 License
This project is licensed under the MIT License.

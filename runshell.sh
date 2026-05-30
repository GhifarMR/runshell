
#!/bin/bash

runshell() {
  
  # -h || --help
  if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "RunShell 🏁"
        echo "A simple utility to automatically grant execute permission and run shell scripts."
        echo ""
        echo "Usage:"
        echo "  runshell <filename>    Execute the specified shell script"
        echo "  runshell -h, --help    Show this help menu"
        return 0
  fi

  # check for missing argument
  if [[ -z "$1" ]]; then
    echo "⚠️ Error! missing argument"
    echo "❓ Usage : runshell <filename>"
    return 1
  fi

  local file=$1

  # check if file exists
  if [[ ! -f "$file" ]]; then
    echo "⚠️ Error! '$file' not found"
    return 1
  fi

  # add execute permission to user
  if [[ ! -x "$file" ]]; then
    echo "🧂 Add execute permission to user..."
    chmod u+x "$file"
  fi

  # run the program
  ./"$file"
}

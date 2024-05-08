#!/bin/bash

# Function to display the Arch Linux logo in colored ASCII art
print_linux_logo() {
    echo -e "\e[1;35m  _     _              _                    _ _                  "
    echo -e "\e[1;35m | |   | |            (_)                  | (_)                 "
    echo -e "\e[1;35m | |__ | |___      __  _   _   _ ___  ___  | |_ _ __  _   ___  __"
    echo -e "\e[1;35m | '_ \| __\ \ /\ / / | | | | | / __|/ _ \ | | | '_ \| | | \ \/ /"
    echo -e "\e[1;35m | |_) | |_ \ V  V /  | | | |_| \__ \  __/ | | | | | | |_| |>  < "
    echo -e "\e[1;35m |_.__/ \__| \_/\_/   |_|  \__,_|___/\___| |_|_|_| |_|\__,_/_/\_\ "
    echo -e "\e[1;35m                                                                 "
    echo -e "\e[1;35m                                                                 "
}

# Function to display system information with icons
print_system_info() {
    # Username and operating system name
    echo -e "\e[1;32m┌──────────────────────────────────────────────────────────────────────┐"
    echo -e "│\e[1;32m👤 $(whoami)@$(uname -n)                                                │"
    echo -e "├──────────────────────────────────────────────────────────────────────┤"

    # System information
    if command -v lsb_release &>/dev/null; then
        echo -e "│\e[1;34m💻 OS: $(lsb_release -d -s | sed 's/"/\\"/g')                                                                                                     │"
    elif [ -e /etc/os-release ]; then
        echo -e "│\e[1;34m💻 OS: $(grep "^PRETTY_NAME" /etc/os-release | cut -d "=" -f 2 | tr -d '"' | sed 's/"/\\"/g')                                                     │"
    else
        echo -e "│\e[1;34m💻 OS: N/A                                                                                                                                        │"
    fi

    # Other system information
    echo -e "│\e[1;34m🏠 Host: $(hostname)                                                    │"
    echo -e "│\e[1;34m🐧 Kernel: $(uname -r)                                           │"
    echo -e "│\e[1;34m⏲️ Uptime: $(uptime -p | sed 's/up //')                                          │"
    echo -e "│\e[1;34m📦 Packages: $(package_count)                                                     │"
    echo -e "│\e[1;34m💾 Memory: $(free -h | awk '/^Mem:/ {print $3 " / " $2}')                                               │"
    echo -e "\e[1;32m└──────────────────────────────────────────────────────────────────────┘"
}

# Function to count installed packages
package_count() {
    if command -v pacman &>/dev/null; then
        pacman -Qq | wc -l
    elif command -v dpkg &>/dev/null; then
        dpkg-query -f '${binary:Package}\n' -W 2>/dev/null | wc -l
    elif command -v rpm &>/dev/null; then
        rpm -qa 2>/dev/null | wc -l
    else
        echo "N/A"
    fi
}

# Display Linux logo and system information
print_linux_logo
print_system_info
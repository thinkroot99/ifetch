#!/bin/bash

# Funcție pentru afișarea logo-ului Arch Linux în format ASCII colorat
print_arch_logo() {
    echo -e "\e[1;35m _     _              _                                   _     ";
    echo -e "\e[1;35m| |   | |            (_)                                 | |    ";
    echo -e "\e[1;35m| |__ | |___      __  _   _   _ ___  ___    __ _ _ __ ___| |__  ";
    echo -e "\e[1;35m| '_ \| __\ \ /\ / / | | | | | / __|/ _ \  / _\` | '__/ __| '_ \ ";
    echo -e "\e[1;35m| |_) | |_ \ V  V /  | | | |_| \__ \  __/ | (_| | | | (__| | | |";
    echo -e "\e[1;35m|_.__/ \__| \_/\_/   |_|  \__,_|___/\___|  \__,_|_|  \___|_| |_|";
    echo -e "\e[1;35m                                                                ";
    echo -e "\e[1;35m                                                                ";
}

# Funcție pentru afișarea informațiilor despre sistem, cu pictograme
print_system_info() {
    # Nume utilizator și nume sistem de operare
    echo -e "\e[1;32m┌──────────────────────────────────────────────────────────────────────┐"
    echo -e "│\e[1;32m👤 $(whoami)@$(uname -n)                                                │"
    echo -e "├──────────────────────────────────────────────────────────────────────┤"

    # Informații despre sistem
    if command -v lsb_release &>/dev/null; then
        echo -e "│\e[1;34m💻 OS: $(lsb_release -d -s)                                                                                                     │"
    elif [ -e /etc/os-release ]; then
        echo -e "│\e[1;34m💻 OS: $(grep "^PRETTY_NAME" /etc/os-release | cut -d "=" -f 2 | tr -d '"')                                                     │"
    else
        echo -e "│\e[1;34m💻 OS: N/A                                                                                                                      │"
    fi

    # Alte informații despre sistem
    echo -e "│\e[1;34m🏠 Host: $(hostname)                                                    │"
    echo -e "│\e[1;34m🐧 Kernel: $(uname -r)                                              │"
    echo -e "│\e[1;34m⏲️ Uptime: $(uptime -p | sed 's/up //')                                         │"
    echo -e "│\e[1;34m📦 Packages: $(package_count)                                                     │"
    echo -e "│\e[1;34m💾 Memory: $(free -h | awk '/^Mem:/ {print $3 " / " $2}')                                               │"
    echo -e "\e[1;32m└──────────────────────────────────────────────────────────────────────┘"
}

# Funcție pentru numărarea pachetelor instalate
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

# Afișare logo Arch Linux și informații despre sistem
print_arch_logo
print_system_info

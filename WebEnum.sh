#!/bin/bash

# Banner and author information
echo "  WebEnum Version 2.0"
echo "  Author: Mg Hacker"
printf "\e[1;77m\e[45m  Web Enumeration Tool   \e[0m\n"
printf "\n"

# Function to display the main menu
show_menu() {
    echo "Main Menu:"
    echo "1. Nmap Scan"
    echo "2. Gobuster Directory Enumeration"
    echo "3. Exit"
    read -p "Enter your choice (1/2/3): " choice
}

while true; do
    show_menu

    case $choice in
        1) # Nmap Scan
            read -p "Enter Target IP or Hostname: " nmap_ip
            read -p "Enter the output file location for Nmap scan (or press Enter for default): " nmap_output

            if [ -z "$nmap_output" ]; then
                nmap_output="nmap_scan"
            fi

            echo "Running Nmap scan..."
            nmap -T4 -A -vv -oA "$nmap_output" -sV -O "$nmap_ip" | lolcat
            echo "Running Nmap Vuln Scan..."
            nmap --script vuln -oA "$nmap_output" "$nmap_ip"
            ;;

        2) # Gobuster Directory Enumeration
            read -p "Enter IP or website URL without 'http://' or 'https://': " gobuster_ip
            read -p "What kind of website are you enumerating for (http or https)? " service

            # Define default wordlist and prompt for custom wordlist
            default_wordlist="/usr/share/dirb/wordlists/common.txt"
            read -p "Do you want to use a custom wordlist? (Y/n) " use_custom_wordlist

            if [ "$use_custom_wordlist" = "Y" ] || [ "$use_custom_wordlist" = "y" ]; then
                read -p "Enter the directory for the custom wordlist: " custom_wordlist
                gobuster dir -t 10 -w "$custom_wordlist" -u "$service://$gobuster_ip"
            else
                echo "Using the default wordlist..."
                gobuster dir -t 10 -w "$default_wordlist" -u "$service://$gobuster_ip"
            ;;
        
        3) # Exit
            echo "Exiting the Web Enumeration Tool. Goodbye!"
            exit
            ;;

        *) # Invalid choice
            echo "Invalid choice. Please select a valid option (1/2/3)."
            ;;
    esac
done

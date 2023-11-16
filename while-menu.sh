#!/bin/bash

while true; do
    echo "Menu:"
    echo "a: Display disk usage (df command)"
    echo "b: Display uptime of the system (uptime command)"
    echo "c: Display users that are logged into the system (who command)"
    echo "q: Quit"

    read -p "Enter your choice: " choice

    case $choice in
        a)
            $1
            ;;
        b)
            uptime
            ;;
        c)
            who
            ;;
        q)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please select a, b, c, or q."
            ;;
    esac

    echo
done

#!/bin/bash

# Banner Display
echo ""
echo "**************************************"
echo "*    -------------------------       *"
echo "*    |     Mini Cloud CLI    |       *"
echo "*    -------------------------       *"
echo "*                                    *"
echo "*            Created by              *"
echo "*       | Mr.CloudExplorer |         *"
echo "*            Version 0.1             *"
echo "**************************************"
echo ""

# Main Menu
while true; do
    echo "Choose a cloud provider:"
    echo "1. AWS"
    echo "2. Azure"
    echo "3. Google Cloud"
    echo "4. Exit"
    read -p "Enter your choice (1-4): " choice
    case "$choice" in
        1)
            # Proceed to service menu
            ./aws.sh
            ;;
        2)
            # Proceed to service menu
            ./azure.sh
            ;;
        3)
            # Proceed to service menu
            ./gcp.sh
            ;;
        4)
            # Exit
            echo "Exiting Mini Cloud CLI. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
done

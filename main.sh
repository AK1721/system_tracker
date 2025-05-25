#!/bin/bash
source ./collectors/disk.sh
source ./collectors/cpu.sh
source ./collectors/mem.sh
source ./collectors/processes.sh
source ./collectors/users.sh
source ./collectors/network.sh
source ./config.sh

number=0
#Entrance Dialog


while [ $number -ne 8 ]
do
echo "Welcome to our System Tracker Application
===================================
1) CPU Information
2) Memory Information
3) Processes Information
4) Disk Information
5) Network Information
6) Users Information
7) Extract All Reports
8) Quit"

    read -p "Enter your choice: " number

    echo "Report Time: " $timestamp
    case $number in
        1)
            get_cpu_report
            ;;
        2)
            mem
            ;;
        3)
            get_running_processes
            ;;

        4)
            disk_usage
            ;;

        5)
            network
            ;;

        6)
            get_users_report
            ;;
        
        7)
            {
                get_cpu_report
                mem
                get_running_processes
                disk_usage
                network
                get_users_report
            } > ExtractedReport_"$timestamp".txt
            ;;
        
        8)
            number=8
            ;;

        *)
            echo "Opps! Invalid Option"
    esac
done

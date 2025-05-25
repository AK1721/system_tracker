#!/bin/bash
network() {

    # Get network statistics
    network_usage=$(ip -s link)

    # Get ifconfig output (requires net-tools)
    ifconfig_output=$(ifconfig)

    # Run ping test to 8.8.8.8
    ping_test=$(ping -c 4 8.8.8.8)

    # Write everything to the output file
    {
        echo "Network Usage Report"
        echo "Timestamp: $(date)"
        echo "=============================="
        echo
        echo ">> IP Link Statistics (ip -s link)"
        echo "----------------------------------"
        echo "$network_usage"
        echo
        echo ">> Interface Details (ifconfig)"
        echo "----------------------------------"
        echo "$ifconfig_output"
        echo
        echo ">> Ping Test (8.8.8.8)"
        echo "----------------------------------"
        echo "$ping_test"
    } 
}
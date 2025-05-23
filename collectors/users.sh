#!/bin/bash

get_num_of_users(){
    output=$(cat /etc/passwd | wc -l)
    echo "Count of all users: ${output}"
}

get_list_of_normal_users(){
    echo "Normal Users"
    echo "=================================="
    awk -F: '$3 >= 1000 && $3 < 65534 {print $3 "   " $1 "  " $7}' /etc/passwd
}

get_list_of_service_users(){
    echo "Service Users"
    echo "=================================="
    awk -F: '$3 >= 1 && $3 < 1000 {print $3 "   " $1 "  " $7}' /etc/passwd
}


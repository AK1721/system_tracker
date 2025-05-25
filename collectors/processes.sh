#!/bin/bash

get_running_processes(){
    echo "Running processes"
    echo "-----------------"
    ps -eo pid,ppid,comm,%mem,%cpu,start_time
}


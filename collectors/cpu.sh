#!/bin/bash

get_cpu_usage() {
    # Get the CPU usage using top command
    top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "%"}'
}

get_top_ten_processes_useCPU() {
    # Get the top 10 processes by CPU usages
    ps -eo ppid,comm,%cpu --sort=-%cpu | head -n 11
}

get_cpu_usage
echo "======================================"
get_top_ten_processes_useCPU
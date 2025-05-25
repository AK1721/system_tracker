#!/bin/bash
disk_usage(){
    # Get disk space usage
    disk_usage=$(df -h)

    # Get inode usage
    inode_usage=$(df -i)

    {
        echo "Disk Usage Report"
        echo "Timestamp: $(date)"
        echo "=============================="
        echo
        echo ">> Disk Space (df -h)"
        echo "------------------------------"
        echo "$disk_usage"
        echo
        echo ">> Inode Usage (df -i)"
        echo "------------------------------"
        echo "$inode_usage"
    } 
}

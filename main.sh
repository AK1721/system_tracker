#!/bin/bash
source ./disk.sh
source ./mem.sh
source ./network.sh

read -p "enter number " number

echo $number
case $number in
  1)
    disk_usage
    ;;
  2)
     mem
    ;;
  3)
    network
    ;;
  *)
    disk_usage
    echo "-----------------"
    mem
    echo "-----------------"
    network 
    ;;
esac
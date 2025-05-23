#!/bin/bash

get_running_processes(){
    ps -eo pid,ppid,comm,%mem,%cpu,start_time
}

get_running_processes
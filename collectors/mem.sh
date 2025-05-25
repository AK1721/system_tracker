
#!/bin/bash
mem() {

  # Write memory summary and top memory-consuming processes to the file
  {
    echo "$(date) "
    echo " Memory Summary "
    free -h
    echo ""
    echo "Top 10 Memory-Consuming Processes "
    ps -eo pid,comm,%mem --sort=-%mem | head -n 11
  } 
}


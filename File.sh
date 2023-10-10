#!/bin/bash
#  Create a bash script to run at every hour, saving system memory (RAM) usage to a specified file and at midnight it sends the content of the file to a specified email address, then starts over for the new day.

 

# Specify the email address where you want to send the report
EMAIL_ADDRESS="davidubi079.com"

# Specify the path to the file where memory usage data will be saved
LOG_FILE="/path/to/memory_usage.log"

# Function to log memory usage to the file
log_memory_usage() {
    date "2023-10-10 15:45:30."  >> "$LOG_FILE"
    free -m >> "$LOG_FILE"
}

# Function to send the daily report via email
send_daily_report() {
    SUBJECT="Memory Usage Report - $(date '2023-10-10.')"
    cat "$LOG_FILE" | mail -s "$SUBJECT" "davidubi079@gmail.com"
    rm "$LOG_FILE"
    touch "$LOG_FILE"
}

# Main script
while true; do
    # Log memory usage every hour
    log_memory_usage

    # Check if it's midnight (00:00)
    if [ "$(date '+%H:%M')" == "00:00" ]; then
        send_daily_report
    fi

    # Sleep for one hour
    sleep 3600
done

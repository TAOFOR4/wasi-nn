#!/bin/bash

LOG_FILE="power_log.txt"

echo "Starting power monitoring at $(date)" > "$LOG_FILE"
while true; do
    CPU_TEMP=$(vcgencmd measure_temp | cut -d '=' -f 2)
    CPU_VOLTS=$(vcgencmd measure_volts | cut -d '=' -f 2)
    echo "$(date) - Temp: $CPU_TEMP, Volts: $CPU_VOLTS" >> "$LOG_FILE"
    sleep 1
done

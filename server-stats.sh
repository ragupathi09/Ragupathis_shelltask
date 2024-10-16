#! /bin/sh

cpu_utlization_percentage="$(vmstat 1 2|tail -1|awk '{print $15}')"
Free_space_RAM="$(free -h | awk '{print $3}' | sed -n '2p')"
Free_space_PHY="$(df -h | awk '{print $4}' | sed -n '2p')"
PHYS_mem_perc="$(df -h | awk '{print $5}' | sed -n '2p')"
echo "Total CPU usage "$cpu_utlization_percentage 
echo "Total memory usage "$Free_space_RAM
echo "Total free in disk usage "$Free_space_PHY
echo "Total disk usage "$Free_space_PHY
memfree="$(cat /proc/meminfo | grep MemFree | awk '{print $2}')"
memtotal="$(cat /proc/meminfo | grep MemTotal | awk '{print $2}')" 


co="$(($memtotal-$memfree))"
echo "RAM Used including percentage"$co
TOP_five_process=$(ps -eo cmd,%cpu --sort=-%cpu | head -n 6)
TOP_five_MEMORY=$(ps -eo cmd,%mem --sort=-%mem | head -n 6)
echo $TOP_five_process
echo $TOP_five_MEMORY

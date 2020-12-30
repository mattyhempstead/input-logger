# Key events represented as a line of (time, key)

sudo evtest /dev/input/event24 | 
stdbuf -oL grep 'Event: ' |
stdbuf -oL grep -v 'SYN_REPORT' |
stdbuf -oL cut -d' ' -f 3,9 |
stdbuf -oL tr -d '()' |
stdbuf -oL sed 's/.$//' >> key_log.csv


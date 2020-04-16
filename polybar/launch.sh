#/!bin/bash
# Detect if secondary monitor is connected, if so, add same bar
# see https://github.com/polybar/polybar/issues/763

killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)
set -- $outputs

for m in $outputs; do
	if [ $m == $1 ]
	then
		MONITOR1=$m polybar --reload top -c ~/.config/polybar/config &
	fi
done

for m in $outputs; do
	export MONITOR1=$1
done

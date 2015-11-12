#!/bin/bash
# A simple stopwatch that times things.

secs="0"; #le time variable.

# Tell the user how to exit.
echo "'ctl + c to' exit.";

# Clock, adds 1 second every second to counter.
function tick {
        echo -ne "Started "$secs "Seconds ago.\r";
        sleep 1;
        secs=$((secs+1));
        tick;
}
tick;

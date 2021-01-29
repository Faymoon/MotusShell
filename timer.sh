#!/bin/bash

fin=0

startTimer()
{
    time=$1
    while [ $time -gt 0 ]
    do
      sleep 1
      let "time-=1"
      echo -n "Il vous reste: "
      echo -ne "$(((time+1)/60)) min $(((time%60)+1)) s \r"
    done

    exit 1

}

timeIsOver(){
        echo "time is over"
	fin=1
}


trap timeIsOver 2

startTimer 70


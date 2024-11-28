#!/usr/bin/bash
echo "Process 1: " && date.exe >> waktu.txt && sleep 4 &
PID1 = $$
echo "PID 1: " + $PID1
wait $PID1
echo "Process 2: " && date.exe >> waktu.txt && sleep 4 &
PID2 = $$
wait $PID2
#bash ./scripts/NEW_RL/SWaT_scripts/train_anomaly_transformer_fast_learner.sh
#date.exe >> start2.txt
#bash ./scripts/NEW_RL/SWaT_scripts/train_dcdetector_fast_learner.sh
#date.exe >> start3.txt
#bash ./scripts/NEW_RL/SWaT_scripts/train_maelnet_slow_learner.sh
date.exe >> waktu.txt
#!/usr/bin/bash
date.exe >> start1.txt
bash ./scripts/NEW_RL/SWaT_scripts/train_anomaly_transformer_fast_learner.sh
#date.exe >> start2.txt
#bash ./scripts/NEW_RL/SWaT_scripts/train_dcdetector_fast_learner.sh
#date.exe >> start3.txt
#bash ./scripts/NEW_RL/SWaT_scripts/train_maelnet_slow_learner.sh
date.exe >> finish.txt
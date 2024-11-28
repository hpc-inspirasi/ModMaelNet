#!/usr/bin/bash
bash ./scripts/NEW_RL/SMAP_scripts/train_anomaly_transformer_fast_learner.sh &
bash ./scripts/NEW_RL/SMAP_scripts/train_dcdetector_fast_learner.sh &
bash ./scripts/NEW_RL/SMAP_scripts/train_maelnet_slow_learner.sh &
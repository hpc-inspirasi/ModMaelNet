echo "Script MaelNET on Database SMAP" >> run_SMAP.txt
echo "Train Anomaly" >> run_SMAP.txt
echo "Started at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt
bash ./scripts/NEW_RL/SMAP_scripts/train_anomaly_transformer_fast_learner.sh
echo "Finished at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt

echo "Train DC Detector" >> run_SMAP.txt
echo "Started at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt
bash ./scripts/NEW_RL/SMAP_scripts/train_dcdetector_fast_learner.sh
echo "Finished at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt

echo "Train Slow Learner" >> run_SMAP.txt
echo "Started at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt
bash ./scripts/NEW_RL/SMAP_scripts/train_maelnet_slow_learner.sh
echo "Finished at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt

echo "Testing Model" >> run_SMAP.txt
echo "Started at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt
bash ./scripts/NEW_RL/SMAP_scripts/test.sh
echo "Finished at `date`" >> run_SMAP.txt
#date >> run_SMAP.txt
echo "----------------------------" >> run_SMAP.txt
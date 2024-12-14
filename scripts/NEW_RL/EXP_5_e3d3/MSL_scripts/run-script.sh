export DATASET_SC="MSL"
export DIR_RES='./results/'
export FL_EXP="EXP_5_e3d3"

export FL_RES="${DIR_RES}run_${DATASET_SC}.txt"
export RUN_RES="${DIR_RES}result_test_${DATASET_SC}.txt"
echo "========================================" >> $FL_RES
echo "Set result file in ${FL_RES}"
echo " " >> $FL_RES

echo "Script MaelNET on Database $DATASET_SC" >> $FL_RES
echo "Train Anomaly" >> $FL_RES
echo "Started at `date`" >> $FL_RES
bash ./scripts/NEW_RL/${FL_EXP}/${DATASET_SC}_scripts/train_anomaly_transformer_fast_learner.sh
echo "Finished at `date`" >> $FL_RES
echo "---"

echo "Train DC Detector" >> $FL_RES
echo "Started at `date`" >> $FL_RES
bash ./scripts/NEW_RL/${FL_EXP}/${DATASET_SC}_scripts/train_dcdetector_fast_learner.sh
echo "Finished at `date`" >> $FL_RES
echo "---"

echo "Train Slow Learner" >> $FL_RES
echo "Started at `date`" >> $FL_RES
bash ./scripts/NEW_RL/${FL_EXP}/${DATASET_SC}_scripts/train_maelnet_slow_learner.sh
echo "Finished at `date`" >> $FL_RES
echo "---"

echo "Testing Model" >> $FL_RES
echo "Started at `date`" >> $FL_RES
bash ./scripts/NEW_RL/${FL_EXP}/${DATASET_SC}_scripts/test.sh >> $RUN_RES
echo "Finished at `date`" >> $FL_RES
echo "----------------------------" >> $FL_RES
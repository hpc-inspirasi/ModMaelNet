export DATASET_SC="MSL"
export DIR_RES='./results/'
export FL_RES="${DIR_RES}run_${DATASET_SC}.txt"
echo "===========================> run on: `date`" >> $FL_RES
echo "Testing Model" >> $FL_RES
export CUDA_VISIBLE_DEVICES=0

python -u run_anomaly.py \
  --is_training 0 \
  --root_path ./dataset/SMD/ \
  --model_id MaelNetS2_AnomalyTransformer_DCDetector_RL_TA\
  --data SMD \
  --win_size 100 \
  --channel 38 \
  --patch_size 5 \
  --e_layers 3 \
  --d_layers 2 \
  --anomaly_ratio 0.6 \
  --factor 5 \
  --enc_in 38 \
  --dec_in 38 \
  --c_out 38 \
  --d_ff 512 \
  --dropout 0.0 \
  --d_model 512 \
  --moving_avg 100 \
  --gpu 0 \
  --des 'TA' \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --result_dir ./results/ \
  --itr 1

echo "Testing Finished at `date`" >> $FL_RES
echo "----------------------------" >> $FL_RES
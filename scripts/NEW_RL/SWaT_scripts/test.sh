export CUDA_VISIBLE_DEVICES=0

python -u run_anomaly.py \
  --is_training 0 \
  --root_path ./dataset/SWaT/ \
  --model_id MaelNetS1_AnomalyTransformer_DCDetector_RL\
  --data SWaT \
  --win_size 100 \
  --channel 25 \
  --patch_size 5 \
  --e_layers 2 \
  --d_layers 1 \
  --anomaly_ratio 0.85 \
  --factor 5 \
  --enc_in 25 \
  --dec_in 25 \
  --c_out 25 \
  --d_model 512 \
  --moving_avg 100 \
  --gpu 0 \
  --des 'Exp_h256_l2' \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --itr 1 &

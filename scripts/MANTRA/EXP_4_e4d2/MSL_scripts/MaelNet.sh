export CUDA_VISIBLE_DEVICES=0

python -u run_mantra.py \
  --is_training 1 \
  --root_path ./dataset/MSL/ \
  --model_id MaelNetB1_MaelNetS1_MSL_MSE_NO_SL2 \
  --model MaelNetB1 \
  --data MSL \
  --e_layers 2 \
  --d_layers 1 \
  --anomaly_ratio 0.85 \
  --factor 5 \
  --enc_in 55 \
  --dec_in 55 \
  --c_out 55 \
  --d_model 512 \
  --gpu 0 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --itr 1 &
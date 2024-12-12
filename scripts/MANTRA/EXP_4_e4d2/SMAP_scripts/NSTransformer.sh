py -u run_mantra.py \
  --is_training 1 \
  --root_path ./dataset/SMAP/ \
  --model_id NSTransformerB1_NSTransformerS1_SMAP_MSE_NO_SL \
  --model NSTransformerB1 \
  --slow_model NSTransformerS1 \
  --data SMAP \
  --e_layers 2 \
  --d_layers 1 \
  --anomaly_ratio 0.85 \
  --factor 5 \
  --enc_in 25 \
  --dec_in 25 \
  --c_out 25 \
  --d_model 512 \
  --gpu 0 \
  --des 'Exp_h256_l2' \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --itr 1 &
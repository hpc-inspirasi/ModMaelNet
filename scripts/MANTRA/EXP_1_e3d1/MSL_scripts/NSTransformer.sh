export CUDA_VISIBLE_DEVICES=0

python -u run_mantra.py \
  --is_training 1 \
  --root_path ./dataset/MSL/ \
  --model_id NSTransformerB1_NSTransformerS1_MSL \
  --model NSTransformerB1 \
  --slow_model NSTransformerS1 \
  --data MSL \
  --e_layers 2 \
  --d_layers 1 \
  --anomaly_ratio 1 \
  --factor 5 \
  --enc_in 55 \
  --dec_in 55 \
  --c_out 55 \
  --d_model 512 \
  --gpu 0 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --itr 1 \
  --result_dir ./results/ 

python -u run_mantra.py \
  --is_training 0 \
  --root_path ./dataset/MSL/ \
  --model_id NSTransformerB1_NSTransformerS1_MSL \
  --model NSTransformerB1 \
  --slow_model NSTransformerS1 \
  --data MSL \
  --e_layers 2 \
  --d_layers 1 \
  --anomaly_ratio 1 \
  --factor 5 \
  --enc_in 55 \
  --dec_in 55 \
  --c_out 55 \
  --d_model 512 \
  --gpu 0 \
  --p_hidden_dims 128 128 \
  --p_hidden_layers 2 \
  --itr 1 \
  --result_dir ./results/ 
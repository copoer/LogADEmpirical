python main_run.py --folder=bgl/ --log_file=BGL.log --dataset_name=bgl --model_name=deeplog --window_type=sliding \
--window_size=60 --step_size=60 --is_logkey --min_len=10 --train_size=0.8 --train_ratio=1 --valid_ratio=0.1 \
--test_ratio=1 --max_epoch=100 --n_warm_up_epoch=0 --n_epochs_stop=10 --batch_size=512 --num_candidates=50 \
--history_size 10 --is_process

python main_run.py --folder=bgl/ --log_file=BGL.log --dataset_name=bgl --model_name=loganomaly --window_type=sliding --window_size=60 --step_size=60 --is_logkey --min_len=10 --train_size=0.8 --train_ratio=1 --valid_ratio=0.1 --test_ratio=1 --max_epoch=100 --n_warm_up_epoch=0 --n_epochs_stop=10 --batch_size=512 --num_candidates=50 --history_size 10 --is_process

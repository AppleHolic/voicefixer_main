pwd

export TRAIL_NAME=pc

python3 train.py -m  unet \
                  -l l1 \
                 -t dsd_vocals \
                 -t_type vocals \
                 -c 1 \
                 --lr 0.0003 \
                 --source_sample_rate_low 1500 \
                 --source_sample_rate_high 44100 \
                 --gamma 0.90 \
                 --dl FixLengthAugRandomDataLoader \
                 --sample_rate 44100 \
                 -n fixed_4k_44k_mask_gan \
                 --save_metric_monitor val_loss \
                 --early_stop_tolerance 64 \
                 --batchsize 8 --max_epochs 500 --hours_for_an_epoch 2

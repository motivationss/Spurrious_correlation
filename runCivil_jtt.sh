#!/bin/bash
#SBATCH --job-name=jtt-civilComment
#SBATCH --mail-user=gaotang@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --time=6:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=48g

python generate_downstream.py --exp_name jigsaw_sample_exp --dataset jigsaw --n_epochs 3 --lr 2e-5 --weight_decay 0 --method ERM --batch_size 12

bash results/jigsaw/jigsaw_sample_exp/ERM_upweight_0_epochs_3_lr_2e-05_weight_decay_0.0/job.sh

python process_training.py --exp_name jigsaw_sample_exp --dataset jigsaw --folder_name ERM_upweight_0_epochs_3_lr_2e-05_weight_decay_0.0 --lr 1e-05 --weight_decay 0.01 --final_epoch 2 --batch_size 16 --deploy

bash results/jigsaw/jigsaw_sample_exp/train_downstream_ERM_upweight_0_epochs_3_lr_2e-05_weight_decay_0.0/final_epoch2/JTT_upweight_6_epochs_3_lr_1e-05_weight_decay_0.01/job.sh

python analysis.py --exp_name jigsaw_sample_exp/train_downstream_ERM_upweight_0_epochs_3_lr_2e-05_weight_decay_0.0/final_epoch2/ --dataset jigsaw
#!/bin/bash
#SBATCH --job-name=jtt-civilComment
#SBATCH --time=48:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=64g

python generate_downstream.py --exp_name jigsaw_sample_exp --dataset jigsaw --n_epochs 12 --lr 2e-5 --weight_decay 0 --method ERM --batch_size 24

bash results/jigsaw/jigsaw_sample_exp/ERM_upweight_0_epochs_100_lr_2e-05_weight_decay_0.0/job.sh

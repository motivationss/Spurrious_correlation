#!/bin/bash
#SBATCH --job-name=celebA
#SBATCH --time=12:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=48g

python generate_downstream.py --exp_name CelebA_sample_exp --dataset CelebA --n_epochs 50 --lr 1e-5 --weight_decay 0.1 --method ERM

bash results/CelebA/CelebA_sample_exp/ERM_upweight_0_epochs_50_lr_1e-05_weight_decay_0.1/job.sh
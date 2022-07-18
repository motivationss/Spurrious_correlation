#!/bin/bash
#SBATCH --job-name=jtt-WaterbirdProcessOur
#SBATCH --mail-user=gaotang@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --time=48:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=64g

bash results/CUB/CUB_sample_exp/train_downstream_ERM_upweight_0_epochs_33_lr_1e-05_weight_decay_0.0/final_epoch32/JTT_upweight_20_epochs_300_lr_1e-05_weight_decay_1.0/job.sh

python analysis.py --exp_name CUB_sample_exp/train_downstream_ERM_upweight_0_epochs_33_lr_1e-05_weight_decay_0.0/final_epoch32/ --dataset CUB

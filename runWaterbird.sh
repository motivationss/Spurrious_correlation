#!/bin/bash
#SBATCH --job-name=jtt-WaterbirdERM
#SBATCH --mail-user=gaotang@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --time=48:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=64g

bash results/CUB/CUB_sample_exp/ERM_upweight_0_epochs_100_lr_1e-05_weight_decay_1.0/job.sh
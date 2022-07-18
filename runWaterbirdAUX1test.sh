#!/bin/bash
#SBATCH --job-name=jtt-runWaterbirdAUX1test
#SBATCH --mail-user=ljrjerryg@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --time=48:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=32g


bash results/CUB/CUB_sample_exp/AUX1_upweight_0_epochs_50_lr_1e-05_weight_decay_0.0/job.sh
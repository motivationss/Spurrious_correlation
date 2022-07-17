#!/bin/bash
#SBATCH --job-name=jtt-MultiNIL_process
#SBATCH --mail-user=gaotang@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --time=12:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=2
#SBATCH --mem-per-gpu=100g

bash results/MultiNLI/MultiNLI_sample_exp/train_downstream_ERM_upweight_0_epochs_5_lr_2e-05_weight_decay_0.0/final_epoch2/JTT_upweight_100_epochs_5_lr_1e-05_weight_decay_0.1/job.sh

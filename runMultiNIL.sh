#!/bin/bash
#SBATCH --job-name=jtt-MultiNILfirst
#SBATCH --mail-user=gaotang@umich.edu
#SBATCH --mail-type=BEGIN,END
#SBATCH --time=12:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=2
#SBATCH --mem-per-cpu=100g

python generate_downstream.py --exp_name MultiNLI_sample_exp --dataset MultiNLI --n_epochs 5 --lr 2e-5 --weight_decay 0 --method ERM

bash results/MultiNLI/MultiNLI_sample_exp/ERM_upweight_0_epochs_5_lr_2e-05_weight_decay_0.0/job.sh

python process_training.py --exp_name MultiNLI_sample_exp --dataset MultiNLI --folder_name ERM_upweight_0_epochs_5_lr_2e-05_weight_decay_0.0_nobert --lr 1e-05 --weight_decay 0.1 --final_epoch 2 --deploy

bash results/MultiNLI/MultiNLI_sample_exp/train_downstream_ERM_upweight_0_epochs_5_lr_2e-05_weight_decay_0.0/final_epoch2/JTT_upweight_4_epochs_5_lr_2e-05_weight_decay_0/job.sh

python analysis.py --exp_name MultiNLI_sample_exp/train_downstream_ERM_upweight_0_epochs_5_lr_2e-05_weight_decay_0.0/final_epoch2/ --dataset MultiNLI
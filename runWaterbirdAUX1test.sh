#!/bin/bash
#SBATCH --job-name=jtt-runWaterbirdAUX1test
#SBATCH --mail-user=ljrjerryg@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --time=48:00:00
#SBATCH --account=vvh0
#SBATCH --gres=gpu:1
#SBATCH --partition=spgpu
#SBATCH --nodes=1
#SBATCH --mem-per-gpu=32g
#SBATCH --output=/home/%u/Spurrious_correlation/ljr/%x-%j.log
#SBATCH --no-requeue

export PATH=~/anaconda3/bin:$PATH
conda init bash
source ~/.bashrc
conda activate jtt
nvidia-smi

bash results/CUB/CUB_sample_exp/AUX1_upweight_0_epochs_5_lr_1e-05_weight_decay_0.0_aux_lambda_0.1/job.sh
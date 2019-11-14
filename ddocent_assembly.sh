#!/bin/bash
#SBATCH -J ddRAD_lemurinus_dDocent          # Name of the job
#SBATCH -o ddRAD_lemurinus_dDocent.out      # Name of file that will have program output
#SBATCH -e ddRAD_lemurinus_dDocent.err      # Name of the file that will have job errors, if any
#SBATCH -n 40
#SBATCH -N 1
#SBATCH -t 0-168:00
#SBATCH -p general
#SBATCH --mem=3000
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pradoirwin@g.harvard.edu

cd sequencing/demultiplexed_reads/untrimmed_reads/

module load Anaconda/5.0.1-fasrc02

source activate ddocent_env

dDocent config.file

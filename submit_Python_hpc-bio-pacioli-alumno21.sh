#!/bin/bash
#SBATCH --job-name=submit_Python_hpc-bio-pacioli-alumno21.sh
#SBATCH --output=python10^8.out
#SBATCH --error=python.err
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=02:00:00
#SBATCH --chdir=/home/alumno21/lab-python
#SBATCH --partition=hpc-bio-pacioli

# Cargar el módulo de anaconda
module load anaconda/2023.03

# Ejecutar el notebook con el número de elementos pasado como argumento
ipython reduc-operation-alumno21.ipynb $1


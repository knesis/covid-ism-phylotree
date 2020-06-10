#!/bin/bash

# Note: Not a Proteus script

# Activate nextstrain environment
# Make sure environment was installed from config/nextstrain.yaml
conda deactivate
conda activate nextstrain


input='../data/sequences_20200517.fasta'
metadata='../data/metadata_20200517.tsv'
output='../results/stage-1-filt-nextstrain/sequences_filt_ns.fasta'
outputdir='../results/stage-1-filt-nextstrain'

mkdir $outputdir


augur filter --sequences $input \
--metadata $metadata \
--min-length 25000 \
--exclude-where date='2020' date='2020-01-XX' date='2020-02-XX' date='2020-03-XX' date='2020-04-XX' date='2020-05-XX' date='2020-06-XX' date='2020-01' date='2020-02' date='2020-03' date='2020-04' date='2020-05' date='2020-06' \
--output $output \
--group-by division year month \
--sequences-per-group 100

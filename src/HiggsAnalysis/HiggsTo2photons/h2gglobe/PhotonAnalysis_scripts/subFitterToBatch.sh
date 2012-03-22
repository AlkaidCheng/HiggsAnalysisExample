#!/bin/bash
# run with $1 = $PWD, $2 = .dat, $3 = number of jobs
hostname
echo "Started At -> "
date
echo "------------------------------------------------"
echo "Running StatAnalysis from  $1 with dat file $2"
echo "Printing dat file"
cat $1/$2
source /vols/cms/grid/setup.sh
#export X509_USER_PROXY=/home/hep/mj509/.myproxy
cd $1
eval `scramv1 runtime -sh`
JOBID=$[$SGE_TASK_ID-1]
python fitter.py -i $2 -n $3 -j $JOBID

echo "Finished At -> "
date
echo "------------------------------------------------"

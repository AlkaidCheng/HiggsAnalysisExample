#qsub -q hepmedium.q -t 1-50 subFitterToBatch.sh $PWD datafiles_mva.dat 50  
qsub -q hepmedium.q -t 1-7 subCombinerToBatch.sh $PWD filestocombine.dat 7

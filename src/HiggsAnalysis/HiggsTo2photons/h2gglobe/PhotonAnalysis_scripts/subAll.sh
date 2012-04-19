#qsub -q hepmedium.q -t 1-100 subFitterToBatch.sh $PWD datafiles_mva.dat 100  
qsub -q hepmedium.q -t 1-7 subCombinerToBatch.sh $PWD filestocombine.dat 7

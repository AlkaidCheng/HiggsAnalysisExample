#qsub -q hepmedium.q -t 1-50 subFitterToBatch.sh $PWD datafiles_training.dat 50  
#qsub -q hepmedium.q -t 100 subFitterToBatch.sh $PWD datafiles_mva.dat 100  
qsub -q hepmedium.q -t 1-10 subCombinerToBatch.sh $PWD filestocombine.dat 10
#qsub -q hepmedium.q -t 1-1 subCombinerToBatch.sh $PWD filestocombine.dat 1

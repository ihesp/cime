#!/usr/bin/env sh -f 
#===============================================================================
# Automatically generated module settings for hobart
#===============================================================================

.  /usr/share/Modules/init/sh
module purge  
if [ "$COMPILER" = "intel" ]
then
	module load compiler/intel/15.0.2.164
fi
if [ "$COMPILER" = "intel" ] && [ "$MPILIB" = "mvapich2" ]
then
	module unload mpi/intel/openmpi-1.8.1-qlc
	module load mpi/intel/mvapich2-1.8.1-qlc
fi
if [ "$COMPILER" = "pgi" ]
then
	module load compiler/pgi/15.1
fi
if [ "$COMPILER" = "pgi" ] && [ "$MPILIB" = "mvapich2" ]
then
	module unload mpi/pgi/openmpi-1.8.1-qlc
	module load mpi/pgi/mvapich2-1.8.1-qlc
fi
if [ "$COMPILER" = "nag" ]
then
	module load compiler/nag/6.0
	./xmlchange MPILIB=openmpi
fi
if [ "$COMPILER" = "gnu" ]
then
	module load compiler/gnu/4.8.3
fi
export P4_GLOBMEMSIZE=500000000
export NETCDF_DIR=$NETCDF_PATH
ulimit -s unlimited
ulimit -c unlimited

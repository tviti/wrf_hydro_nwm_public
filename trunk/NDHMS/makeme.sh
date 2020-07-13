#!/usr/bin/env bash

module purge
module load toolchain/intel/2018.5.274
module load vis/JasPer/2.0.14-intel-2018.5.274
module load data/netCDF/4.6.2-intel-2018.5.274
module load data/netCDF-Fortran/4.4.5-intel-2018.5.274
module load data/PnetCDF/1.9.0-intel-2018.5.274
module load data/HDF5/1.10.2-intel-2018.5.274

export NETCDF=$(nc-config --prefix)

cp ./arc/macros.mpp.mpiifort.xcat macros
cp ./arc/Makefile.mpp Makefile.comm

mkdir lib mod

bash compile_offline_NoahMP.sh setEnvar.sh

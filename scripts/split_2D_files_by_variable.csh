#!/bin/csh

# Author: Andrea Jenney (ajenney@uci.edu)
# Description: The following script loops through timesteps in a big 2D file and saves each timestep as a new file.

# How to save files
set filestring = RCE_rcemip-small_99km_300K_nz_32_128_

# 2D variables
set variables = ('CLD' 'CWP' 'IWP' 'LHF' 'LWNS' 'LWNSC' 'LWNT' 'LWNTC' 'PSFC' 'PW' 'Prec' 'SHF' 'SOLIN' 'SWNS' 'SWNSC' 'SWNT' 'SWNTC' 'SWVP' 'TB' 'U200' 'U850' 'USFC' 'V200' 'V850' 'VSFC' 'W500' 'ZC' 'ZE')

# Loop through each variable name and create a directory
foreach variable ( $variables )
  mkdir $variable
end

# Read filenames
set files = ( `ls *.nc` )

# Iterate over files and variables to save smaller timesteps as new files
foreach filename ( $files )
  set timestring = `echo ${filename} | cut -c38-47`
  foreach variable ( $variables )
    ncks -v $variable $filename ${filestring}${variable}_${timestring}.2Dbin.nc
    mv *$variable*.nc $variable/
  end
  rm $filename
end

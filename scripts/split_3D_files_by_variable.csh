#!/bin/csh

# Author: Andrea Jenney (ajenney@uci.edu)
# Description: The following script loops through timesteps in a big 3D file and saves each timestep as a new file

# How to save files
set filestring = RCE_rcemip-small_99km_300K_nz_32_128_

# 3D variables
set variables = ('p' 'U' 'V' 'W' 'PP' 'QRAD' 'TABS' 'QV' 'QN' 'QP') 

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
    ncks -v $variable $filename ${filestring}${variable}_${timestring}.nc
    mv *_${variable}_*.nc $variable/
  end
  rm $filename
end

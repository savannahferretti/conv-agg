Vertical resolution impacts explicit simulation of deep convection
------------

by A. M. Jenney<sup>1</sup>, S. L. Ferretti<sup>1</sup>, & M. S. Pritchard<sup>1</sup>

<sup>1</sup>Department of Earth System Science, University of California, Irvine, Irvine, CA, USA

**Status:** This [paper](https://doi.org/10.1029/2022MS003444) was published in the *Journal for Advances in Modeling Earth Systems*, DOI: 2022MS003444. [Supporting information](https://agupubs.onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1029%2F2022MS003444&file=2022MS003444-sup-0001-Supporting+Information+SI-S01.pdf) is also available. *Note that code presented here was used to make the figures in the [pre-print](https://essopenarchive.org/doi/full/10.1002/essoar.10512579.1), and might not be updated to match the current publication.*

**Abstract**: The aggregation of tropical convection greatly influences the mean-state of the atmosphere, altering humidity distributions, total atmospheric radiative cooling, and cloud amounts. Although studies have demonstrated the sensitivity of convective aggregation to horizontal resolution and domain size, few studies have explored the impact of vertical resolution on convective aggregation. Here, we investigate the impact of vertical resolution on simulations of deep convection and convective aggregation using the System for Atmospheric Modeling convection resolving model. We analyze simulations of tropical radiative-convective equilibrium with varying vertical levels (32, 64, 128, and 256) across small (100 km), medium (700 km) and large (1,500 km) domains. We demonstrate that relative humidity and cloud fraction decrease with increasing vertical resolution as a result of reduced turbulent mixing. Vertical resolution also influences the occurrence of, onset time, and equilibrium intensity of aggregated convection, and also appears to affect the sensitivity of convective aggregation to domain size. Understanding how simulated convection aggregates, as well as its simulated sensitivity to model formulation, is critical for making and interpreting future predictions of global climate change.

Project Organization
------------
```
├── LICENSE         
├── README.md         
├── notebooks/          
├── scripts/             
└── environment.yml 
```

Acknowledgements
-------
The analysis for this work has been performed on [Bridges-2](https://www.psc.edu/resources/bridges-2/) at the Pittsburgh Supercomputing Center. This research was primarily supported by the NOAA Climate and Global Change Postdoctoral Fellowship Program, with additional funding from the DOE as well as the NSF. We thank Dr. Peter Blossey for help with SAM, and Zeyuan Hu and Adam Sokol for helpful discussions.

**Data Availability:** Convection resolving model simulations were conducted with the System for Atmospheric Modeling (SAM) [version 6.10.9](http://rossby.msrc.sunysb.edu/%7Emarat/SAM/). SAM model configuration files (vertical grids and initial soundings) are hosted on [GitHub](https://github.com/ajenney/conv_agg_vres_public).

--------
<p><small>This template is based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>.</small></p>

Platform Designer example demonstrating Avalon communication from Avalon BFM to Stratix 10 HBM.

First unzip HBM2_Simulation_Example.zip

To run the simulation navigate to the ./HBM2_Simulation_Example/simulation directory and run the following command

%> quartus_sh -t runme.tcl

The simulation writes to the first 16 locations of HBM pseudo channel 0, then reads back and
verifies the data.

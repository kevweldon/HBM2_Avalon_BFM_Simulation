Platform Designer example demonstrating Avalon communication from Avalon BFM to Stratix 10 HBM.

First unzip both quartus.zip and sim.zip.

To run the simulation on Linux navigate to the ./simulation directory and execute the "runme" script.

%> runme

You may have to change the mode of the file first.

%> chmod 755 runme

The simulation writes to the first 16 locations of HBM pseudo channel 0, then reads back and
verifies the data.

/**
 * Project dimensions
 */

SIDES = 7.0;
aSPOKE = 360.0/SIDES;
aSIDE = 180.0 - aSPOKE;

thSPOKE = 6.0;
thBASE = 6.0;
thMID = 9.0;
thTOP = 3.0;
thPAD = 18.0;
thPLATE = 3.0;

lEURO = 128.5;
lSIDE = lEURO + 12*sin(aSPOKE/2)/sin(aSIDE) + 2*thPLATE*tan(aSPOKE/2);

hHP = 5.08;
hLOWER = 20*hHP + 1.0;
hUPPER = 5*hHP + 1.0;

//Explosion parameter
EX = 1.0;

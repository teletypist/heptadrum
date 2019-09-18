/**
 * Project dimensions
 */

SIDES = 7.0;
aSPOKE = 360.0/SIDES;
aSIDE = 180.0 - aSPOKE;

thSPOKE = 6.0;
thRAIL = 6.0;
thBASE = 6.0;
thMID = 9.0;
thTOP = 3.0;
thPAD = 18.0;
thPLATE = 3.0;

lEURO = 128.5;
lSIDE = lEURO + 12*sin(aSPOKE/2)/sin(aSIDE) + 2*(thPLATE+0.5)*tan(aSPOKE/2);
lMINRAD = lSIDE/(2*tan(aSPOKE/2));
lMAJRAD = lSIDE/(2*sin(aSPOKE/2));

rtCTRPAD = 3;
lMAJCTRPAD = lMAJRAD*sqrt(rtCTRPAD)/sqrt(7+rtCTRPAD);
lMINCTRPAD = lMINRAD*sqrt(rtCTRPAD)/sqrt(7+rtCTRPAD);
lRAIL = 20.0;

wPADGAP = 4.0;


rSPEAKER = 178.0/2;

hHP = 5.08;
hLOWER = 10*hHP + 1.0;
hUPPER = 5*hHP + 1.0;
hISOLATOR = hUPPER + thTOP + 5.0;

//Explosion parameter
$ex = 1.0;

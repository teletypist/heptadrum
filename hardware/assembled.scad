/**
 * Entire project as assembled
 */

include <./utils/header.scad>;

use <./components/tier.scad>;
use <./components/supports.scad>;
use <./components/pads.scad>;

//TIERS
base(lSIDE, thBASE);

etranslate([0, 0, hLOWER + thBASE])
mid(lSIDE, thMID);

etranslate([0, 0, hLOWER + hUPPER + thMID + thBASE])
top(lSIDE, thTOP);

//SPOKES
etranslate([0, 0, thBASE])
for(i = [0:SIDES])
rotate([0, 0, i*360.0/SIDES])
lowerSpoke();

etranslate([0, 0, hLOWER + thMID + thBASE])
for(i = [0:SIDES])
rotate([0, 0, i*360.0/SIDES])
upperSpoke();

etranslate([0, 0, hLOWER + thMID + thBASE + hISOLATOR])
for(i = [0:SIDES])
rotate([0, 0, i*360.0/SIDES])
ringPad();

etranslate([0, 0, hLOWER + thMID + thBASE + hISOLATOR])
centerPad();

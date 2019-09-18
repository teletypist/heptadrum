/**
 * Entire project as assembled
 */

include <./utils/values.scad>;

use <./components/tier.scad>;

base(lSIDE, thBASE);
translate([0, 0, hLOWER*EX]) mid(lSIDE, thMID);
translate([0, 0, (hLOWER + hUPPER + thMID)*EX]) top(lSIDE, thTOP);

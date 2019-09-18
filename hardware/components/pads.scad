/**
 *
 * Pad layouts
 *
 */

include <../utils/header.scad>;

function plRingPad() = [
    [lMAJCTRPAD, 0],
    [lMAJRAD + wPADGAP/2.0, 0],
    [(lMAJRAD + wPADGAP/2.0)*cos(aSPOKE), (lMAJRAD + wPADGAP/2.0)*sin(aSPOKE)],
    [lMAJCTRPAD*cos(aSPOKE), lMAJCTRPAD*sin(aSPOKE)],
];

module pRingPad(err=true) {
    offset(-wPADGAP/2.0 - (err ? 0.5 : 0))
    polygon(plRingPad(), convexity=10);
}

module ringPad() {
    linear_extrude(height = thPAD)
    pRingPad(false);
}

module pCenterPad(err=true) {
    circle(r=lMAJCTRPAD - wPADGAP/2.0 - (err ? 0.5 : 0), $fn=7);
}

module centerPad() {
    linear_extrude(height = thPAD)
    pCenterPad(false);
}

/**
 * Supports
 *
 * Consists of the side pieces which hold up the tiers and
 * provide mounting points for the modules
 *
 */

include <../utils/header.scad>;

function plSpoke(reach, err) =
    let (
        endx = lMAJRAD - reach,
        inner1 = thSPOKE/(2*tan(aSIDE/2)),
        inner2 = inner1 + thPLATE/cos(aSPOKE/2),
        inner3 = inner2 + thRAIL/tan(aSIDE/2),
        inner4 = inner3 + lRAIL,
        inner5 = inner4 + thRAIL/tan(aSIDE/2)
    ) [
        [endx - (err ? 0.5 : 0.0), 0],
        [endx - inner1, thSPOKE/2 - (err ? 0.5 : 0.0)],
        [endx - inner2, thSPOKE/2 - (err ? 0.5 : 0.0)],
        [endx - inner3, thSPOKE/2 + thRAIL - (err ? 0.5 : 0.0)],
        [endx - inner4, thSPOKE/2 + thRAIL - (err ? 0.5 : 0.0)],
        [endx - inner5, thSPOKE/2 - (err ? 0.5 : 0.0)],
        [(err ? 0.5 : 0.0), thSPOKE/2 - (err ? 0.5 : 0.0)],
        [(err ? 0.5 : 0.0), -thSPOKE/2 + (err ? 0.5 : 0.0)],
        [endx - inner5, -thSPOKE/2 + (err ? 0.5 : 0.0)],
        [endx - inner4, -thSPOKE/2 - thRAIL + (err ? 0.5 : 0.0)],
        [endx - inner3, -thSPOKE/2 - thRAIL + (err ? 0.5 : 0.0)],
        [endx - inner2, -thSPOKE/2 + (err ? 0.5 : 0.0)],
        [endx - inner1, -thSPOKE/2 + (err ? 0.5 : 0.0)],
];

module pSpoke(reach, err=true) {
    etranslate([reach, 0, 0]) polygon(points=plSpoke(reach, err), convexity=10);
}

module spoke(reach, height) {
    linear_extrude(height=height) pSpoke(reach, false);
}

module lowerSpoke() {
    spoke(rSPEAKER, hLOWER);
}

module upperSpoke() {
    spoke(rSPEAKER, hUPPER);
}

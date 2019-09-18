/**
 * The bottom most part of the project.
 */

include <../utils/values.scad>;

module pBase(side, center=true, err=true) {
    r=(side/2)/sin(360/14);
    translate(center ? [0, 0, 0] : [r, r, 0]) circle(r=r - (err ? 0.5 : 0.0), $fn=7);
}

module base(side, thickness, center=true) {
    linear_extrude(height=thickness) pBase(side, center=center, err=false);
}

module pMid(side, center=true, err=true) {
    r=(side/2)/sin(360/14);
    translate(center ? [0, 0, 0] : [r, r, 0]) circle(r=r - (err ? 0.5 : 0.0), $fn=7);
}

module mid(side, thickness, center=true) {
    linear_extrude(height=thickness) pMid(side, center=center, err=false);
}

module pTop(side, center=true, err=true) {
    r=(side/2)/sin(360/14);
    translate(center ? [0, 0, 0] : [r, r, 0]) circle(r=r - (err ? 0.5 : 0.0), $fn=7);
}

module top(side, thickness, center=true) {
    linear_extrude(height=thickness) pTop(side, center=center, err=false);
}

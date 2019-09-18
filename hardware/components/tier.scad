/**
 * The tiers of the project.
 *
 * Each tier is provided in two parts:
 * - the 2D plan, suitable for printing (as a template)
 * - an extruded version for rendering
 */

include <../utils/header.scad>;

module pBase(side, center=true, err=true) {
    r=(side/2)/sin(360/14);
    etranslate(center ? [0, 0, 0] : [r, r, 0]) circle(r=r - (err ? 0.5 : 0.0), $fn=7);
}

module base(side, thickness, center=true) {
    linear_extrude(height=thickness) pBase(side, center=center, err=false);
}

module pMid(side, center=true, err=true) {
    r=(side/2)/sin(360/14);
    etranslate(center ? [0, 0, 0] : [r, r, 0]) circle(r=r - (err ? 0.5 : 0.0), $fn=7);
}

module mid(side, thickness, center=true) {
    linear_extrude(height=thickness) pMid(side, center=center, err=false);
}

module pTop(side, center=true, err=true) {
    r=(side/2)/sin(360/14);
    etranslate(center ? [0, 0, 0] : [r, r, 0]) circle(r=r - (err ? 0.5 : 0.0), $fn=7);
}

module top(side, thickness, center=true) {
    linear_extrude(height=thickness) pTop(side, center=center, err=false);
}

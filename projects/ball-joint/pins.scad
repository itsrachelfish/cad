/*

 This file is for the little pins that connect the printable stud together
 
*/

include <helper.scad>;
include <measurements.scad>;

// Ball pin
cylinder(h = ball_inner / 2, r = (bolt / 2) * 0.90);

// Pipe pin
translate([bolt * 1.5, 0, 0])
{
    cylinder(h = pipe_inner / 2, r = (bolt / 2) * 0.90);
}
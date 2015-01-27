/*

 This file is for the little pins that connect the stud together
 
*/

include <helper.scad>;

ball = 2.54;
pipe = 1.27;
bolt = 0.3175;

// Ball pin
cylinder(h = ball / 2, r = bolt / 2);

// Pipe pin
translate([1, 0, 0])
{
    cylinder(h = pipe / 2, r = bolt / 2);
}
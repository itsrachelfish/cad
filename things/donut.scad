include <../third-party/partial_rotate_extrude.scad>;

// Regular donut
rotate_extrude()
{
    translate([20, 0, 0]) circle(r = 10);
}

// Donut slice
rotate([0, 60, 0]) translate([0, 0, 30]) partial_rotate_extrude(140, 20)
{
    circle(r = 10);    
}

$fn = 50;
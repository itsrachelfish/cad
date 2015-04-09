use <../lego/axle.scad>;

// End piece to tie string
difference()
{
    cylinder(r = 12, h = 2);
    
    translate([7, 0, 0])
    cylinder(r = 1.5, h = 2);
    
    axle(2);
}
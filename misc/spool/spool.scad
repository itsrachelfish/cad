use <../lego/axle.scad>;

module spiral()
{
    for(z = [1:540])
    {
        rotate(z * 2)
        translate([5, 0, z * .02])
        rotate([0, 90, 0])
        cylinder(h = 5, r1 = 0.3, r2 = 2, center = false);
    }
}

module hole(h, r)
{
    rotate([0, 90, 0])
    cylinder(h = h * 2, r = r, center = true);
}

difference()
{
    cylinder(h = 25, r = 7.5);
    
    translate([0, 0, 14])
    spiral();
    
    translate([0, 0, 11])
    mirror([0, 0, 1])
    spiral();
    
    axle(30);
}

//    spiral();
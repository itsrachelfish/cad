use <../lego/axle.scad>;

module spiral()
{
    for(z = [1:540])
    {
        rotate(z * 2)
        translate([5, 0, z * .04])
        rotate([0, 90, 0])
        cylinder(h = 2.5, r1 = 0.3, r2 = 2, center = false);
    }
}

difference()
{
    cylinder(h = 25, r = 7.5);
    
    translate([0, 0, 5])
    spiral();
        
    axle(30);
}
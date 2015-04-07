module spiral()
{
    for(z = [1:360])
    {
        rotate(z * 2)
        translate([5, 0, z * .02])
        rotate([90, 0, 0])
        cube(size = [7, 2, 1], center = false);
    }
}

module hole(h, r)
{
    rotate([0, 90, 0])
    cylinder(h = h * 2, r = r, center = true);
}


difference()
{
    cylinder(h = 30, r = 7.5);

    translate([0, 0, 3])
    hole(10, 1.5);

    translate([0, 0, 27])
    hole(10, 1.5);
    
    translate([0, 0, 17.5])
    spiral();
    
    translate([0, 0, 12.5])
    mirror([0, 0, 1])
    spiral();
}

$fn = 10;
//include <housing.scad>;

module turbine(width, height, blades)
{
    blade_width = width * 0.4;
    
    difference()
    {
        for (i = [1:blades])
        {
            rotate((i*360) / blades)
            {
                    translate([0, -blade_width / 12, 0])
                    {
                        cube([blade_width, blade_width / 6, height]);
                    }
            }
        } 

        difference()
        {
            cylinder(h = height, r = width * 0.435);
            cylinder(h = height + 0.02, r = width * 0.4);
        }
        
    }

    difference()
    {
        cylinder(h = height * 2, r = width / 15);

        translate([width * 0.11, 0, height * 2 - width / 15])
        {
            cube(width / 7, center = true);
        }
        
        translate([-width * 0.11, 0, height * 2 - width / 15])
        {
            cube(width / 7, center = true);
        }
    }
}



turbine(50, 15, 7);
    
$fn = 50;
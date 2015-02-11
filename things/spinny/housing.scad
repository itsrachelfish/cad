//include <plate.scad>;

module housing(width, height, port)
{
    difference()
    {
        hull()
        {
            cylinder(h = height, r = width * 0.43);

            translate([-width * 0.15, -width * 0.3, 0])
            {
                cube([width * 0.6, width * 0.6, height]);
            }
       }
       
       translate([0, 0, -0.01])
       {
            cylinder(h = height + 0.02, r = width * 0.41);
       }
       
       translate([width / 3, -width / 5, height /2])
       {
            rotate([0, 90, 0])
            {   
               cylinder(h = width / 5, r = port / 2);
            }
        }

        translate([width / 3, width / 5, height /2])
        {
            rotate([0, 90, 0])
            {   
               cylinder(h = width / 5, r = port / 2);
            }
        }

   }
}

housing(50, 18, 4.2);

$fn = 50;
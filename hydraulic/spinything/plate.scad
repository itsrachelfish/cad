module bolt(diameter, height)
{
    cylinder(r = diameter / 2, h = height);
}

module radial_bolts(width, height, bolt_count, bolt_diameter)
{
    for (i = [1:bolt_count])
    {
        rotate((i*360) / bolt_count)
        {
            translate([width /2 - bolt_diameter, width / 2 - bolt_diameter , -0.01])
            {
                bolt(bolt_diameter, height + 0.02);
            }
        }
    }    
}


module plate(width, height)
{    
    difference()
    {
        translate([-width / 2, -width / 2, 0])
        {
            cube([width, width, height]);
        }

        translate([0, 0, height / 2])
        {
          difference()
            {
                hull()
                {
                    cylinder(h = height, r = width * 0.44);

                    translate([-width * 0.15, -width * 0.3, 0])
                    {
                        cube([width * 0.6, width * 0.6, height * 2]);
                    }
               }
                
                cylinder(h = height, r = width * 0.40);
            }
        }
       
        radial_bolts(width, height, 4, 4.5);
    }
}

// Example usage
difference()
{
    plate(width = 50, height = 3);
    cylinder(h = 6, r = 50 / 14);
}

$fn = 50;
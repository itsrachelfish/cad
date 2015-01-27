/*

 This file is designed for printing on FDM printers
 without the need for support materials.
 
*/

include <stud.scad>;

ball = 2.54;
pipe = 1.27;
length = 5.08;
bolt = 0.3175;

// Create studs with holes for plastic joining holes
module stud_with_holes()
{
    difference()
    {
        // Create a stud
        stud(ball, pipe, length, bolt);
        
        // Cut ball pin hole
        translate([-0.01, 0, 0])
        {
            rotate([0, 90, 0])
            {
                cylinder(h = ball / 4, r = bolt / 2);
            }
        }
        
        // Cut pipe pin hole
        translate([-0.01, 0, length / 1.5])
        {
            rotate([0, 90, 0])
            {
                cylinder(h = pipe / 4, r = bolt / 2);
            }
        }
    }
}

// Cut the bottom halves off of the studs
difference()
{
    // Create parallel studs
    rotate([90, 0, 0])
    {
        // Rotate so the bolts are facing upwards
        rotate([0, 0, 90])
        {
            stud_with_holes();
        }

        // Translate and mirror so the studs print next to eachother
        translate([ball, 0, length])
        {
            mirror([0, 0, 1])
            {
                rotate([0, 0, 90])
                {
                    stud_with_holes();
                }
            }

        }
    }
    
    // Create a cuboid of the area being removed
    translate([-ball, -length * 2, -ball])
    {
        cube([ball * 3, length * 3, ball]);
    }
}


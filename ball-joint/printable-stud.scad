/*

 This file is designed for printing on FDM printers
 without the need for support materials.
 
*/

include <stud.scad>;
include <measurements.scad>;

// Create studs with holes for plastic joining holes
module stud_with_holes()
{
    difference()
    {
        // Create a stud
        stud(ball_inner, pipe_inner, stud_length, bolt);
        
        // Cut ball_inner pin hole
        translate([-0.01, 0, 0])
        {
            rotate([0, 90, 0])
            {
                cylinder(h = ball_inner / 4, r = bolt / 2);
            }
        }
        
        // Cut pipe_inner pin hole
        translate([-0.01, 0, stud_length / 1.5])
        {
            rotate([0, 90, 0])
            {
                cylinder(h = pipe_inner / 4, r = bolt / 2);
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
        translate([ball_inner, 0, stud_length])
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
    translate([-ball_inner, -stud_length * 2, -ball_inner])
    {
        cube([ball_inner * 3, stud_length * 3, ball_inner]);
    }
}


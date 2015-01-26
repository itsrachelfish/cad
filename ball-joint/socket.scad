/*

 This module takes four parameters:
    ball - Diameter of the ball
    pipe - Outer diameter of the pipe being conencting to
    size - Size of the socket
    bolt - Diameter of the bolts connecting the socket to the pipe

 Please note, all measurements in centimeters!

*/

// Temporary stud include for testing
include <stud.scad>;

function radius(diameter) = diameter / 2;

module socket(ball, pipe, size, bolt)
{
    difference()
    {
        translate([-size[0] / 2, 0, -ball / 4])
        {
            cube(size);
        }
        
        // Cut bolt holes out of the socket
        translate([-size[0] / 2, 0, size[2] / 2.5])
        {
            rotate([0, 90, 0])
            {
                cylinder(h = 4, r = radius(bolt));
            }
        }

        translate([-size[0] / 2, 0, size[2] - size[2] / 3])
        {
            rotate([0, 90, 0])
            {
                cylinder(h = 4, r = radius(bolt));
            }
        }
        
        sphere(r = radius(ball));
    }
    
}

socket(3, 3, [4, 1, 5], 0.3175);

rotate([180, 0, 0])
{
    stud(2.54, 1.27, 5.08, 0.3175);
}

 // So smooth~
$fn = 100;
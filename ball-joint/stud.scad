/*

 This module takes four parameters:
    ball - Diameter of the ball
    pipe - Inner diameter of the pipe being conencting to
    length - Length of the stud which extends into the pipe
    bolt - Diameter of the bolts connecting the stud to the pipe

 Please note, all measurements are in millimeters!

*/

include <helper.scad>;

module stud(ball, pipe, length, bolt)
{
    // Create ball
    sphere(r = radius(ball));
    
    // Move connecting rod to the top of the ball
    translate([0, 0, ball / 3])
    {
        difference()
        {
            // Create connecting rod
            cylinder(h = length, r = radius(pipe));

            // Cut bolt holes out of the connecting rod
            translate([-radius(pipe), 0, length / 4])
            {
                bolt(pipe, bolt);
            }

            translate([-radius(pipe), 0, length - (length / 4)])
            {
                bolt(pipe, bolt);
            }
        }
    }
}

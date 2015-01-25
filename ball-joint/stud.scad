/*

 This module takes three parameters:
    ball - Diameter of the ball
    pipe - Inner diameter of the pipe being conencting to
    length - Length of the stud which extends into the pipe
    bolt - Diameter of the bolts connecting the stud to the pipe

 Please note, all measurements in centimeters!

*/

function radius(diameter) = diameter / 2;

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
                
        }

        rotate()
        {
            translate([0, 0, -4])
            {
                cylinder(h = pipe, r = radius(bolt));
            }
        }
    }

    // TODO: Cut connecting holes 
}

// Example stud
stud(2.54, 1.27, 5.08, 0.3175);

// So smooth~
$fn = 100;


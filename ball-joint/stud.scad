/*

 This module takes three parameters:
	ball - Diameter of the ball
	pipe - Inner diameter of the pipe being conencting to
	length - Length of the stud which extends into the pipe

 Please note, all measurements in centimeters!

*/

function radius(diameter) = diameter / 2;

module stud(ball, pipe, length)
{
	sphere(r = radius(ball));
	
	translate([0, 0, ball / 3])
	{
		cylinder(h = length, r = radius(pipe));
	}

	// TODO: Cut connecting holes 
}

// Example stud
stud(2.54, 1.27, 5.08);

// So smooth~
$fn = 100;


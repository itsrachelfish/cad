$fn = 100;		// So smooth~

ball = 2.54;		// Diameter of the ball
pipe = 1.27;		// Inner diameter of the pipe we're conencting to
length = 5.08;	// Length of the stud which extends into the pipe


sphere(r = ball / 2);
cylinder(h = length, r = pipe / 2);
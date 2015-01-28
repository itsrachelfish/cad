/*

 This is an example file to demonstrate the ball joint
 
*/

include <socket.scad>;
include <stud.scad>;
include <measurements.scad>;

socket(ball_outer, pipe_outer, socket_size, bolt);

rotate([75, 0, 0])
{
    stud(ball_inner, pipe_inner, stud_length, bolt);
}


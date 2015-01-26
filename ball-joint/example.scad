/*

 This is an example file to demonstrate the ball joint
 
*/

include <socket.scad>;
include <stud.scad>;

socket(2.645, 2.1336, [4, 1.5, 7], 0.3175);

rotate([75, 0, 0])
{
    stud(2.54, 1.27, 5.08, 0.3175);
}


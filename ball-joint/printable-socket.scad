/*

 This file is designed for printing on FDM printers
 without the need for support materials.
 
*/

include <socket.scad>;

ball = 2.645;
pipe = 2.1336;
size = [4, 1.5, 7];
bolt = 0.3175;

// Translate socket halves to the bottom of the build platform
translate([0, 0, size[0] / 2])
{
    difference()
    {
        // Create parallel sockets
        rotate([90, 90, 0])
        {
            socket(ball, pipe, size, bolt);

            translate([0, size[1] + size[1] / 2 ,0])
            {
                socket(ball, pipe, size, bolt);
            }
        }
        
        // Create a cuboid to remove the top half of the shape
        translate([-size[2], -size[2], 0])
        {
            cube([size[2] * 2, size[2] * 2, size[0]]);
        }
    }
}
/*

 This file is designed for printing on FDM printers
 without the need for support materials.
 
*/

include <socket.scad>;
include <measurements.scad>;

// Translate socket halves to the bottom of the build platform
translate([0, 0, socket_size[0] / 2])
{
    difference()
    {
        // Create parallel sockets
        rotate([90, 90, 0])
        {
            socket(ball_outer, pipe_outer, socket_size, bolt);

            translate([0, socket_size[1] + socket_size[1] / 2 ,0])
            {
                socket(ball_outer, pipe_outer, socket_size, bolt);
            }
        }
        
        // Create a cuboid to remove the top half of the shape
        translate([-socket_size[2], -socket_size[2], 0])
        {
            cube([socket_size[2] * 2, socket_size[2] * 2, socket_size[0]]);
        }
    }
}
/*

 Miscelaneous helper functions

*/

function radius(diameter) = diameter / 2;

module bolt(length, diameter)
{
    rotate([0, 90, 0])
    {
        cylinder(h = length, r = radius(diameter));
    }
}

// So smooth~
$fn = 100;


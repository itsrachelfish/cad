// A basic LEGO-compatible axle
// not endorsed by LEGO blah blah blah copyright

// Note: Axle size is approximate and primarilly intended for creating sockets

module axle(length)
{
    rotate([0, 0, 90])
    cube([4.85, 1.85, length], center = true);
    cube([4.85, 1.85, length], center = true);
}

/*
// Example axle
translate([15, 0, 0])
axle(40);

// Example socket
difference()
{
    cylinder(r = 10, h = 2);
    axle(40);
}
*/
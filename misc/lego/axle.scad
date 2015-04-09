// A basic LEGO-compatible axle
// not endorsed by LEGO blah blah blah copyright

// Note: Axle size is approximate and primarilly intended for creating sockets

module axle(length)
{
    if(length > 5)
    {
        height = 5.25;
        width = 2.25;

        make_axle(height, width, length);
    }
    else
    {
        height = 4.95;
        width = 1.95;

        make_axle(height, width, length);
    }
}

module make_axle(height, width, length)
{
    translate([0, 0, length / 2])
    {
        rotate([0, 0, 90])
        cube([height, width, length], center = true);
        cube([height, width, length], center = true);
    }
}

// Example axle
translate([15, 0, 0])
axle(40);

// Example socket
difference()
{
    cylinder(r = 10, h = 2);
    axle(40);
}

// Make things smooth
$fn = 100;


module connector(length, diameter) {
    union() {
        sphere(d = diameter);

        // Bottom connection
        cylinder(h = length, d = diameter);

        // Side connection
        rotate([0, 90, 0]) {
            cylinder(h = length, d = diameter);
        }

        // Angled connection
        rotate([70, 0, 0]) {
            cylinder(h = length, d = diameter);
        }
    }
}

difference() {
    connector(length = 10, diameter = 6);
    connector(length = 10, diameter = 5);
}
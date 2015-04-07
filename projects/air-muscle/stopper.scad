difference() {

rotate([0, 90, 0]) {
	difference() {
		rotate_extrude($fn=44) import(file = "stopper.dxf");
		rotate([0, 90, 0]) translate([-40, 0, 0]) cylinder(h = 20, r =2.25, center= true);
	}
}

translate([0, 0, -5]) cube([1000, 1000, 10], center = true);
}
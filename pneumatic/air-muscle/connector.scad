difference()
{
    rotate([0, 90, 0])
    {
        difference()
        {
            union() {
                rotate([90, 0, 0]) {
                   translate([0, 18, 0]) rotate_extrude($fn=44) import(file = "connector.dxf");
                }

                difference()
                {
                    rotate_extrude($fn=44) import(file = "stopper.dxf");
                    rotate([0, 90, 0]) translate([-40, 0, 0]) cylinder(h = 20, r =2.25, center= true);
                }
            }
            
            rotate([0, 0, 0]) translate([0, 0, 0]) cylinder(h = 40, r =2.25, center= true);
            rotate([90, 0, 0]) translate([0, 18, 15]) cylinder(h = 30, r =1, $fn= 44, center= true);
        }
    }

    translate([0, 0, -5]) cube([1000, 1000, 10], center = true);
}

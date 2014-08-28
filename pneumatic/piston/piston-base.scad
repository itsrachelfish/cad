difference()
{
    union()
    {
        difference()
        {
                linear_extrude(height = 18, $fn = 44) import(file = "piston-mm.dxf", layer="base");
                linear_extrude(height = 18, $fn = 44) import(file = "piston-mm.dxf", layer="bolts");
                translate([0, 0, 15]) linear_extrude(height = 24, $fn = 44) import(file = "piston-mm.dxf", layer="outer");
        }
        
        rotate_extrude($fn = 44) import(file = "piston-mm.dxf", layer="insert");
    }

    translate([0, 0, 8]) rotate([90, 0, 0]) rotate_extrude($fn = 44) import(file = "piston-mm.dxf", layer="connector");
    translate([0, 0, 3]) rotate_extrude($fn = 44) import(file = "piston-mm.dxf", layer="connector");
}

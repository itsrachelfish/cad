difference()
{
    union()
    {
        difference()
        {
                linear_extrude(height = 7.6, $fn = 44) import(file = "piston-mm.dxf", layer="base");
                linear_extrude(height = 8, $fn = 44) import(file = "piston-mm.dxf", layer="bolts");
        }        
    }

    rotate_extrude($fn = 44) import(file = "piston-mm.dxf", layer="head");

 
	translate([0,0,-1]) difference() {
		linear_extrude(height = 20) circle(r=30, center = true);
		linear_extrude(height = 20) circle(r=7, center = true);
	}

}

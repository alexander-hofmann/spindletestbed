$fn=120;

//spindle wagon
M4_hole = 4.4;

mwx = 49.5;
mwy = 35.8;
mwz = 30.4;


module spindlemount() {
    
    cube([mwx, mwy, mwz], center=true);
    
    hdx = 5.27 + (M4_hole / 2);
    hdy1 = 4.36 + (M4_hole / 2);
    hdy2 = 28.20 + (M4_hole / 2);
    
    translate([((mwx / 2) - hdx),((mwy / 2) - hdy1),(mwz / 2)])
        cylinder(h = 20, d = M4_hole, center=true);
    translate([((-mwx / 2) + hdx),((mwy / 2) - hdy1),(mwz / 2)])
        cylinder(h = 20, d = M4_hole, center=true);
    translate([((mwx / 2) - hdx),((mwy / 2) - hdy2),(mwz / 2)])
        cylinder(h = 20, d = M4_hole, center=true);
    translate([((-mwx / 2) + hdx),((mwy / 2) - hdy2),(mwz / 2)])
        cylinder(h = 20, d = M4_hole, center=true);
    
}

wagon_width = 65.3;
wagon_height = 37.26;
wagon_thickness = 5;


rotate([180, 0, ])
difference() {
    union() {
        translate([0, 0, mwz/2 + (wagon_thickness/2)])
            cube([wagon_width, wagon_height, wagon_thickness], center=true); 
        translate([wagon_width / 2 - wagon_thickness / 2, 0, 0])
            cube([wagon_thickness, wagon_height, wagon_height], center=true);
        translate([-wagon_width / 2 + wagon_thickness / 2, 0, 0])
            cube([wagon_thickness, wagon_height, wagon_height], center=true);
    }
    translate([0, 0, -1]) {
        spindlemount();
    }
}
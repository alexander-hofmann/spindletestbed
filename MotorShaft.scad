$fn=120;
difference() {
    union() {
        cylinder(h=5, d=25);
        translate([0,0,5])
            cylinder(h=10, d=6);
    }
    union() {
        translate([0,0,-0.5])
            cylinder(h=4, d=15);
        for(i=[0 : 360/6 : 359]) {
            rotate([0, 0, i]) {
                translate([10, 0, -0.5])
                    cylinder(h=6, d=2.2);
                translate([10, 0, 1.5])
                    cylinder(h=5, d=4.1);
            }
        }
    }
}
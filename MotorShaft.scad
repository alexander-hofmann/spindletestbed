$fn=120;
// Motor shaft
// for harddisc bldc motors
difference() {
    union() {
        //outer
        cylinder(h=5, d=25);
        //new shaft 6mm
        translate([0,0,5])
            cylinder(h=10, d=6.2);
    }
    union() {
        //motor shaft
        translate([0,0,-0.5])
            cylinder(h=4, d=15.1);
        for(i=[0 : 360/6 : 359]) {
            rotate([0, 0, i]) {
                //screw holes
                translate([10, 0, -0.5])
                    cylinder(h=6, d=2.4);
                //screw head holes
                translate([10, 0, 1.5])
                    cylinder(h=5, d=4.2);
            }
        }
    }
}
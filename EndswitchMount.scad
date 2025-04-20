$fn=120;
//endswitchmount

M2_spike = 2.1;


difference() {
    union() {
        //translate([0, -10, 0])
            //cube([20, 20, 6]);
        cube([20, 10, 7]);
        translate([4 + (M2_spike / 2), 10-6.8, 3])
            cylinder(h=11, d=M2_spike);
        translate([20 - (4 + (M2_spike / 2)), 10-6.8, 3])
            cylinder(h=11, d=M2_spike);
    }
    union() {
        translate([10, 5, -10])
            cylinder(h=20, d=4.3);
        translate([10, 5, 3.5])
            cylinder(h=7, d=8);
        //translate([10, -4.91, -10])
        //    cylinder(h=20, d=4.3);
        //translate([10, -4.91, 3])
        //    cylinder(h=7, d=7);
    }
}
    



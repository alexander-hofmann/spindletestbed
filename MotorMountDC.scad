$fn=120;

// motor negative
module motor() {
    //motor body
    mb = 36.8;
    sd = 13;
    cylinder(h=10, d=mb); 
    //shaft outcome - outer to outer is 19
    // center of shaft outcome = 19 - ((mb - sd) / 2)
    translate([0, 19 - ((mb - sd) / 2), 10]) { 
        cylinder(h=25, d=13);  
    }
    //screw holes
    rotate([0, 0, 0])
    for (i=[0 : 60 : 359]) {
        rotate([0, 0, i]) {
            sd = 3.4;
            sh = 5.7;
            translate([(mb/2) - (sd/2) - 1, 0, 10]) {
                cylinder(h=20, d=3.4);
            }
            translate([(mb/2) - (sd/2) - 1, 0, 18]) {
                cylinder(h=5, d=5.7);
            }
        }
    };
}


difference() {
    cube([40, 60, 5]);
    union() {
        translate([20, 35, -15])
            motor();
        translate([10, 10, -1]) {
            cylinder(h=15, d=4.3);
        }
        translate([30, 10, -1]) {
            cylinder(h=15, d=4.3);
        }
        translate([10, 10, -4]) {
            cylinder(h=5, d=8.4);
        }
        translate([30, 10, -4]) {
            cylinder(h=5, d=8.4);
        }

    }
}

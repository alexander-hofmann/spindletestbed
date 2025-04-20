$fn=120;

// motor negative
module motor() {
    //motor body
    cylinder(h=10, d=37); 
    //shaft outcome
    translate([0, 5.5, 10]) { 
        cylinder(h=20, d=12);  
    }
    //screw holes
    rotate([0, 0, -19])
    for (i=[0:360/6:359]) {
        rotate([0, 0, i]) {
            translate([31.5/2, 5.5, 10]) {
                cylinder(h=20, d=3.4);
            }
            translate([31.5/2, 5.5, 18]) {
                cylinder(h=5, d=5.5);
            }
        }
    };
}


difference() {
    cube([40, 60, 5]);
    union() {
        translate([20, 42.5, -15])
            motor();
        translate([10, 10, -1]) {
            cylinder(h=15, d=4.3);
        }
        translate([30, 10, -1]) {
            cylinder(h=15, d=4.3);
        }
        translate([10, 10, -4]) {
            cylinder(h=5, d=8);
        }
        translate([30, 10, -4]) {
            cylinder(h=5, d=8);
        }

    }
}


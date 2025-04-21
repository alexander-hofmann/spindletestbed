$fn=120;
//endswitchmount

M2_spike = 2.1;

module m4_negative() {
    for (i=[0:120:359]) {
        rotate([0, 0, i])
            cube([6.9, 4.0, 4], center=true);
    }    
}
module nutbolt() {
    difference() {
        linear_extrude(height = 15, center=true) {
            polygon(points=[[3, 0], [8, 0], [8, 0.2], 
                            [11, 3.7], [11, 3.9], [7.65, 3.9],
                            [7.65, 6.2], [3.35, 6.2], [3.35, 3.9],
                            [0, 3.9], [0, 3.7], [3, 0.2], [3, 0]
                           ]);
        }
        translate([5.5, 1.6, 0])
            rotate([90, 0, 0])
                #m4_negative();
        translate([5.5, 7, 0])
            rotate([90, 90, 0])
                cylinder(h=10, d=4.3);
    }
}

module endswitch() {
    difference() {
        union() {
            //translate([0, -10, 0])
                //cube([20, 20, 6]);
            cube([20, 10, 7]);
            translate([4 + (M2_spike / 2), 10-6.8, 3])
                cylinder(h=11, r1 = M2_spike/2+0.4, r2 = M2_spike/2+0.2);
            translate([20 - (4 + (M2_spike / 2)), 10-6.8, 3])
                cylinder(h=11, r1 = M2_spike/2+0.4, r2 = M2_spike/2+0.2);
        }
        union() {
            translate([10, 5, -10])
                cylinder(h=20, d=4.3);
            translate([10, 5, 3.5])
                cylinder(h=7, d=8);
        }
    }
}

endswitch();
translate([4.5, 5.0, -6.2])
rotate([90, 0, 0])
nutbolt();



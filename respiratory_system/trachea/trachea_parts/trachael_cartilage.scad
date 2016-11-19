
module trachael_cartilage(width, ringthickness) {
    difference() {
        // Cartilage Ring
        difference() {
            $fn = 360;
            // This controls the outer ring of the wall.
            translate([-1, 0, 2])
            cylinder(r=width, h=ringthickness, center=true);

            // This controls the inner ring wall.
            translate([0, 0, 2])
            cylinder(r=width-1, h=6, center=true);

        }
        // Make opening to turn into cring.
        difference() {
            translate([5,-5,-6]) cube([20,10,12]);
        }
    }

}

trachael_cartilage(12.7, 1);
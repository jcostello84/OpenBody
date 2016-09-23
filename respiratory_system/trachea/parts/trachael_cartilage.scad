
module trachael_cartilage(width, ringthickness) {
    difference() {
        // Cartilage Ring
        difference() {
            rotate_extrude(convexity = 1, $fn = 360)
            translate([width, 0])
            circle(r = ringthickness, $fn = 100);
        }
        // Make opening to turn into cring.
        difference() {
            translate([5,-5,-6]) cube([20,10,12]);
        }
    }
}

trachael_cartilage(12.7, 1);
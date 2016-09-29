 // Sets the smoothness of the outside and inside ring walls. 
 $fn=360;

module trachea(trachea_height_mm, trachea_radius_mm) {
    difference() {
        // Outer ring dimensions.
        cylinder(h = trachea_height_mm, r1 = trachea_radius_mm, r2 = trachea_radius_mm, center = false);
        // Inner ring dimensions.
        cylinder(h = trachea_height_mm, r1 = trachea_radius_mm-.8, r2 = trachea_radius_mm-.8, center = false);
    
    }
}

// Display ring which if 4 inches by .5 inches.
trachea(101.6, 12.7);
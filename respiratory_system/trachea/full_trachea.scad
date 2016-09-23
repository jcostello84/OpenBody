 // Import the cricoid cartilage which wraps cartilage c-rings around the trachea.
 // All numbers represent millimeters.
    
use <parts/trachael_cartilage.scad>;
// Loops through the function 20 times.
for (i=[0:19])
    // translate([0, 0, display a ring every 5 mm * number of iterations])
    translate([0, 0, 5*i])
    // trachael_cartilage( Ring Width, ringthickness);
    trachael_cartilage(12.7, 1);

// Import the trachea.
use <parts/trachea.scad>;
// trachea( Height in mm, Width in mm);
trachea(101.6, 12.7);
    
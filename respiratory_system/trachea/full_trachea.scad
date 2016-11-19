 // Import the cricoid cartilage which wraps cartilage c-rings around the trachea.
 // All numbers represent millimeters. Adjust according to patient's requirement
 trachea_hight = 101.6;
 trachea_width = 12.7;
 space_between_cartilage_rings = 5;
 thickness_of_cartilage_ring = 4.5;
    
   
use <trachea_parts/trachael_cartilage.scad>;
// Starting position for the tracheal cartilage.
translate([0, 0,1])
// Loops through the function 20 times.
for (i=[0:19])
    // This controls the x, y, z coordinates of the ring. Twenty rings are added at an increment of 5 mm between.
    translate([0, 0, space_between_cartilage_rings*i])
    // trachael_cartilage( Ring Width, ringthickness);
    trachael_cartilage(trachea_width+1, thickness_of_cartilage_ring);

// Import the trachea.
use <trachea_parts/trachea.scad>;
// trachea( Height in mm, Width in mm);
trachea(trachea_hight, trachea_width);
    
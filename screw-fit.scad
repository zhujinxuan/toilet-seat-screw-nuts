include <BOSL2/std.scad>
include <BOSL2/threading.scad>

// Hex Base
hexSize = [12, 12, 22];

module hexBase() {
    diff() {
        threaded_nut(nutwidth = hexSize.x*2, id = 7, h = hexSize.z, pitch= 1.25, anchor=BOTTOM, bevel = false) {
            attach([TOP]) tag("remove") chamfer_cylinder_mask(d=hexSize.x * 2, chamfer=hexSize.x);
            attach([TOP]) tag("remove") cube([100, 3, hexSize.x], anchor=TOP);
            attach([TOP]) tag("remove") cube([3, 100, hexSize.x], anchor=TOP);
        }
    }
}

hexBase();
// module addCone() {
//     hexBase()
// }

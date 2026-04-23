$fn = 180;

// ===== Parameter =====
housing_outer_diameter = 43;
front_body_length = 38;
shell_wall_thickness = 2.4;

funnel_entry_diameter = 35;
funnel_entry_length   = 1.5;
funnel_length         = 12;
throat_diameter       = 12;
throat_length         = 5;

thread_pitch = 2.5;
thread_depth_radial = 1.0;
thread_length = 12;

male_thread_major_diameter = 33.0;
male_thread_root_diameter  = male_thread_major_diameter - 2 * thread_depth_radial;

main_chamber_diameter = housing_outer_diameter - 2 * shell_wall_thickness;
connector_bore_diameter = male_thread_root_diameter - 2 * shell_wall_thickness;

eps = 0.05;

// ===== Hilfsfunktionen =====
module revolve_profile(points) {
    rotate_extrude(convexity = 10)
        polygon(points);
}

module external_thread(major_d, pitch, length, depth) {
    turns = length / pitch;

    linear_extrude(height = length, twist = -360 * turns, slices = 120)
        translate([major_d/2 - depth, 0, 0])
            polygon([
                [0, -0.42 * pitch],
                [depth, 0],
                [0,  0.42 * pitch]
            ]);
}

// ===== Außen =====
module outer_body() {
    union() {
        cylinder(h = front_body_length, d = housing_outer_diameter);

        translate([0, 0, front_body_length])
            cylinder(h = thread_length, d = male_thread_root_diameter);

        translate([0, 0, front_body_length])
            external_thread(
                male_thread_major_diameter,
                thread_pitch,
                thread_length,
                thread_depth_radial
            );
    }
}

// ===== Innen =====
module inner_void() {
    funnel_r = funnel_entry_diameter / 2;
    throat_r = throat_diameter / 2;
    chamber_r = main_chamber_diameter / 2;
    bore_r = connector_bore_diameter / 2;

    z1 = funnel_entry_length;
    z2 = z1 + funnel_length;
    z3 = z2 + throat_length;

    revolve_profile([
        [0, -eps],
        [funnel_r, -eps],
        [funnel_r, z1],
        [throat_r, z2],
        [throat_r, z3],
        [chamber_r, z3],
        [chamber_r, front_body_length],
        [bore_r, front_body_length],
        [bore_r, front_body_length + thread_length],
        [0, front_body_length + thread_length]
    ]);
}

// ===== Ergebnis =====
difference() {
    outer_body();
    inner_void();
}
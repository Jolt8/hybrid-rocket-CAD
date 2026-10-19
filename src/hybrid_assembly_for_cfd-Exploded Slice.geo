SetFactory("OpenCASCADE");
Merge "hybrid_assembly_for_cfd-Exploded Slice.step";
Merge "hybrid_assembly_for_cfd-Exploded Slice.geo.opt";
Mesh.ScalingFactor = 0.001; //Convert mm to meters
Coherence;
//+
Extrude {0, -1.0, 0} {
  Surface{:}; Layers {1}; Recombine;
}
//+
//Extrude { {0, 0, 1}, {0, 0, 0}, 5.0 * Pi / 180  } { Surface{:}; Layers{1}; Recombine; }



//+
Coherence;
//+
Mesh 3;
Coherence Mesh;
Save "hybrid_assembly_for_cfd-Exploded Slice.msh";

//+
Physical Volume("graphite_nozzle_volume", 231) = {4};
//+
Physical Volume("aluminum_volume", 232) = {2, 3, 9};
//+
Physical Volume("chamber_volume", 233) = {1};
//+
Physical Volume("phenolic_liner_volume", 235) = {7, 6, 5};
//+
Physical Volume("fuel_grain_volume", 236) = {8};
//+//+
Physical Surface("inlet_patch", 237) = {15};
//+
Physical Surface("outlet_patch", 238) = {12, 11, 13};
//+
Physical Surface("symmetry_patch", 239) = {14};
//+
Physical Surface("fuel_gain_inner_surface_patch", 240) = {20};
//+
Physical Surface("fuel_gain_top_and_bottom_surface_patches", 241) = {19, 21};
//+
Physical Surface("out_of_plane_patches", 242) = {27, 1, 33, 2, 48, 3, 59, 8, 58, 7, 61, 9, 56, 6, 51, 4};
//+
Physical Surface("out_of_plane_patches", 243) += {53, 5};
//+

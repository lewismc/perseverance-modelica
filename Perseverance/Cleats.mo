within Perseverance;
model Cleats
    extends .VehicleDynamics.Grounds.Unevenness.Uneven(unevenness_table={{0,0,0.55,0.6,1.4,1.45,2},{0,0,0,0,0,0,0},{2,0,0,0,0,0,0},{2.05,0,0,h,h,0,0},{2.55,0,0,h,h,0,0},{2.6,0,0,0,0,0,0},{4,0,0,0,0,0,0}});
    parameter .Modelica.Units.SI.Length h = 0.1 "Height of cleats";
end Cleats;

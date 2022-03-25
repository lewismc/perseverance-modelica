within Perseverance.Experiments;

model DrivingFlat
    extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.Environment(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,world(g = 3.711));
    .Electrification.Batteries.Examples.BatteryPackIdeal batteryPackIdeal annotation(Placement(transformation(extent = {{80.0,-30.0},{100.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Perseverance.Chassis chassis(v_start = 0) annotation(Placement(transformation(extent = {{-40.11678493198284,-41.05839246599143},{42.33900715420507,0.16950357710252817}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFL(k = 0) annotation(Placement(transformation(extent = {{-100.0,22.66666666666667},{-80.0,42.66666666666667}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFR(k = 0) annotation(Placement(transformation(extent = {{-100.0,-7.333333333333333},{-80.0,12.666666666666668}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRL(k = 0) annotation(Placement(transformation(extent = {{-100.0,-39.33333333333333},{-80.0,-19.333333333333332}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRR(k = 0) annotation(Placement(transformation(extent = {{-100.0,-70.0},{-80.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.w_ref w_ref[6](id = {1,2,3,4,5,6}) annotation(Placement(transformation(extent = {{-9.333333333333336,46.0},{-1.3333333333333357,54.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Replicator replicator(nout = 6) annotation(Placement(transformation(extent = {{-24.468497692441865,46.864835640891464},{-18.1981689742248,53.135164359108536}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Trapezoid speedSource(amplitude = 0.5,rising = 1,width = 5,falling = 1,nperiod = 1,startTime = 2,period = 12) constrainedby .Modelica.Blocks.Interfaces.SO annotation(Placement(transformation(extent = {{-61.33333333333333,40.0},{-41.33333333333333,60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Examples.Machine3D motor(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(mode = .Electrification.Utilities.Types.MachineControlMode.Speed,external_speed = true),enable_thermal_port = false,id = 2) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.0,18.0},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor2(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(mode = .Electrification.Utilities.Types.MachineControlMode.Speed,external_speed = true),enable_thermal_port = false,id = 4) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {0.0,18.0},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor3(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(mode = .Electrification.Utilities.Types.MachineControlMode.Speed,external_speed = true),enable_thermal_port = false,id = 6) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {30.0,18.0},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor4(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(mode = .Electrification.Utilities.Types.MachineControlMode.Speed,external_speed = true),enable_thermal_port = false,id = 5) annotation(Placement(transformation(extent = {{10.0,-10.0},{-10.0,10.0}},origin = {30.0,-60.0},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor5(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(mode = .Electrification.Utilities.Types.MachineControlMode.Speed,external_speed = true),enable_thermal_port = false,id = 3) annotation(Placement(transformation(extent = {{10.0,-10.0},{-10.0,10.0}},origin = {0.0,-60.0},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor6(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(mode = .Electrification.Utilities.Types.MachineControlMode.Speed,external_speed = true),enable_thermal_port = false) annotation(Placement(transformation(extent = {{10.0,-10.0},{-10.0,10.0}},origin = {-28.0,-60.0},rotation = -90.0)));

equation
    connect(steerSourceFL.y,chassis.steerFL) annotation(Line(points = {{-79,32.66666666666667},{-61.125052515628994,32.66666666666667},{-61.125052515628994,-8.076075631516261},{-43.25010503125798,-8.076075631516261}},color = {0,0,127}));
    connect(steerSourceFR.y,chassis.steerFR) annotation(Line(points = {{-79,2.666666666666667},{-64,2.666666666666667},{-64,-16.321654840135054},{-43.25010503125798,-16.321654840135054}},color = {0,0,127}));
    connect(steerSourceRL.y,chassis.steerRL) annotation(Line(points = {{-79,-29.333333333333332},{-64,-29.333333333333332},{-64,-24.567234048753846},{-43.25010503125798,-24.567234048753846}},color = {0,0,127}));
    connect(steerSourceRR.y,chassis.steerRR) annotation(Line(points = {{-79,-60},{-61.125052515628994,-60},{-61.125052515628994,-32.81281325737264},{-43.25010503125798,-32.81281325737264}},color = {0,0,127}));
    connect(replicator.y,w_ref.u_r) annotation(Line(points = {{-17.884652538313944,50},{-11.333333333333332,50}},color = {0,0,127}));
    connect(speedSource.y,replicator.u) annotation(Line(points = {{-40.33333333333333,50},{-25.095530564263573,50}},color = {0,0,127}));
    connect(motor.flange3D,chassis.hub_2) annotation(Line(points = {{-27.999999999999996,8},{-27.999999999999996,4.084751788551266},{-27.748416119054657,4.084751788551266},{-27.748416119054657,0.16950357710253172}},color = {95,95,95}));
    connect(motor2.flange3D,chassis.hub_4) annotation(Line(points = {{2.220446049250313e-15,8},{2.220446049250313e-15,4.084751788551266},{1.1111111111111143,4.084751788551266},{1.1111111111111143,0.16950357710253172}},color = {95,95,95}));
    connect(motor3.flange3D,chassis.hub_6) annotation(Line(points = {{30.000000000000004,8},{30.000000000000004,4.084751788551266},{29.970638341276885,4.084751788551266},{29.970638341276885,0.16950357710253172}},color = {95,95,95}));
    connect(motor6.flange3D,chassis.hub_1) annotation(Line(points = {{-28.000000000000004,-50},{-28.000000000000004,-45.529196232995716},{-27.748416119054657,-45.529196232995716},{-27.748416119054657,-41.05839246599143}},color = {95,95,95}));
    connect(motor5.flange3D,chassis.hub_3) annotation(Line(points = {{-2.220446049250313e-15,-50},{-2.220446049250313e-15,-45.529196232995716},{1.1111111111111143,-45.529196232995716},{1.1111111111111143,-41.05839246599143}},color = {95,95,95}));
    connect(motor4.flange3D,chassis.hub_5) annotation(Line(points = {{29.999999999999996,-50},{29.999999999999996,-45.529196232995716},{29.970638341276885,-45.529196232995716},{29.970638341276885,-41.05839246599143}},color = {95,95,95}));
    connect(motor4.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{30.000000000000004,-70},{30.000000000000004,-76},{74,-76},{74,-20},{80,-20}},color = {255,128,0}));
    connect(motor5.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{2.220446049250313e-15,-70},{2.220446049250313e-15,-76},{74,-76},{74,-20},{80,-20}},color = {255,128,0}));
    connect(motor6.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-27.999999999999996,-70},{-27.999999999999996,-76},{74,-76},{74,-20},{80,-20}},color = {255,128,0}));
    connect(motor3.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{29.999999999999996,28},{29.999999999999996,34},{74,34},{74,-20},{80,-20}},color = {255,128,0}));
    connect(motor2.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-2.220446049250313e-15,28},{-2.220446049250313e-15,34},{74,34},{74,-20},{80,-20}},color = {255,128,0}));
    connect(motor.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-28.000000000000004,28},{-28.000000000000004,34},{74,34},{74,-20},{80,-20}},color = {255,128,0}));
    connect(motor.controlBus,motor2.controlBus) annotation(Line(points = {{-18,26},{-18,32},{15.999999999999998,32},{15.999999999999998,26},{9.999999999999998,26}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor3.controlBus,motor2.controlBus) annotation(Line(points = {{40,26},{46,26},{46,32},{16,32},{16,26},{9.999999999999998,26}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor4.controlBus,motor3.controlBus) annotation(Line(points = {{40,-68},{46,-68},{46,26},{40,26}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor5.controlBus,motor4.controlBus) annotation(Line(points = {{10.000000000000002,-68},{10.000000000000002,-74},{46,-74},{46,-68},{40,-68}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor6.controlBus,motor5.controlBus) annotation(Line(points = {{-18,-68},{-18,-74},{10.000000000000002,-74},{10.000000000000002,-68}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[1].systemBus,motor2.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{16,50},{16,26.000000000000004},{10,26.000000000000004}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[2].systemBus,motor2.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{16,50},{16,26.000000000000004},{10,26.000000000000004}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[3].systemBus,motor2.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{16,50},{16,26.000000000000004},{10,26.000000000000004}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[4].systemBus,motor2.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{16,50},{16,26.000000000000004},{10,26.000000000000004}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[5].systemBus,motor2.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{16,50},{16,26.000000000000004},{10,26.000000000000004}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[6].systemBus,motor2.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{16,50},{16,26.000000000000004},{10,26.000000000000004}},color = {240,170,40},pattern = LinePattern.Dot));

    annotation(experiment(StartTime = 0,StopTime = 20,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end DrivingFlat;

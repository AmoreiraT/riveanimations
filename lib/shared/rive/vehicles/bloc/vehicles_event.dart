part of 'vehicles_bloc.dart';

abstract class VehiclesEvent extends Equatable {
  SMITrigger? bump;
  late StateMachineController? controller;
  final Artboard artboard;
  VehiclesEvent({required this.artboard});

  @override
  List<Object> get props => [];
}

class VehiclesDefault extends VehiclesEvent {
  SMITrigger? bump;

  late StateMachineController? controller;
  final Artboard artboard;

  VehiclesDefault({
    this.bump,
    this.controller,
    required this.artboard,
  }) : super(artboard: artboard);
}

class VehicleTouched extends VehiclesEvent {
  SMITrigger? bump;
  Artboard artboard;

  VehicleTouched({
    this.bump,
    required this.artboard,
  }) : super(artboard: artboard);
}

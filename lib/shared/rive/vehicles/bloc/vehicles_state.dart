part of 'vehicles_bloc.dart';

abstract class VehiclesState extends Equatable {
  const VehiclesState();

  @override
  List<Object> get props => [];
}

class VehiclesInitial extends VehiclesState {}

class VehiclesJump extends VehiclesState {}

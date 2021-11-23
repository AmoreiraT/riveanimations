import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rive/rive.dart';

part 'vehicles_event.dart';
part 'vehicles_state.dart';

class VehiclesBloc extends Bloc<VehiclesEvent, VehiclesState> {
  VehiclesBloc() : super(VehiclesInitial()) {
    on<VehiclesEvent>((event, emit) async {
      if (event is VehiclesDefault) {
        event.controller = StateMachineController.fromArtboard(
          event.artboard,
          'bumpy',
        );
        event.artboard.addController(event.controller!);
        event.bump = event.controller!.findInput<bool>(
          'bump',
        ) as SMITrigger;
        bump = event.bump;
        controller = event.controller;
        artboard = event.artboard;

        emit(VehiclesInitial());
      }
      if (event is VehicleTouched) {
        event.bump!.fire();

        emit(VehiclesJump());
      }
    });
  }
  late SMITrigger? bump;
  late StateMachineController? controller;
  late Artboard artboard;
}

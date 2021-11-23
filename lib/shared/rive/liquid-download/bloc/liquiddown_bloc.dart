import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rive/rive.dart';

part 'liquiddown_event.dart';
part 'liquiddown_state.dart';

class LiquiddownBloc extends Bloc<LiquiddownEvent, LiquiddownState> {
  LiquiddownBloc() : super(LiquiddownInitial()) {
    on<LiquiddownEvent>((event, emit) async {
      if (event is LiquiddownDefault) {
        event.controller = StateMachineController.fromArtboard(
          event.artboard,
          'Guido SM',
        );
        event.artboard.addController(event.controller!);
        event.bump = event.controller!.findInput<bool>(
          'Downloading',
        ) as SMIBool;

        event.input =
            event.controller!.findInput<double>('Progress') as SMINumber;

        bump = event.bump;
        controller = event.controller;
        artboard = event.artboard;
        input = event.input;

        emit(LiquiddownInitial());
      }
      if (event is Liquiddownloadind) {
        event.bump!.change(true);

        emit(Liquiddownloading());
      }
      if (event is LiquiddownInput) {
        event.input!.change(100);

        emit(Liquiddownloaded());
      }
    });
  }
  SMIBool? bump;
  SMINumber? input;
  late StateMachineController? controller;
  late Artboard artboard;
}

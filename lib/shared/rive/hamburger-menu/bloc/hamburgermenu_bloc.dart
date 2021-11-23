import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rive/rive.dart';

part 'hamburgermenu_event.dart';
part 'hamburgermenu_state.dart';

class HamburgermenuBloc extends Bloc<HamburgermenuEvent, HamburgermenuState> {
  HamburgermenuBloc() : super(HamburgermenuInitial()) {
    on<HamburgermenuEvent>((event, emit) async {
      if (event is HamburgerMenuInit) {
        event.controller = StateMachineController.fromArtboard(
          event.artboard,
          'switcher',
        );
        event.artboard.addController(event.controller!);
        event.bump = event.controller!.findInput<bool>(
          'switch',
        ) as SMITrigger;

        bump = event.bump;
        controller = event.controller;
        artboard = event.artboard;

        emit(HamburgermenuInitial());
      }
      if (event is HamburgerMenuClick) {
        event.bump!.change(true);
        emit(HamburgermenuClicked());
      }
    });
  }
  SMITrigger? bump;
  late StateMachineController? controller;
  late Artboard artboard;
}

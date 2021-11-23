part of 'hamburgermenu_bloc.dart';

abstract class HamburgermenuEvent extends Equatable {
  HamburgermenuEvent({required this.artboard});

  final Artboard artboard;
  late StateMachineController? controller;
  SMITrigger? bump;

  @override
  List<Object> get props => [];
}

class HamburgerMenuInit extends HamburgermenuEvent {
  final Artboard artboard;
  late StateMachineController? controller;
  SMITrigger? bump;
  HamburgerMenuInit({
    this.bump,
    this.controller,
    required this.artboard,
  }) : super(
          artboard: artboard,
        );
}

class HamburgerMenuClick extends HamburgermenuEvent {
  final Artboard artboard;
  late StateMachineController? controller;
  SMITrigger? bump;
  HamburgerMenuClick({
    this.bump,
    this.controller,
    required this.artboard,
  }) : super(
          artboard: artboard,
        );
}

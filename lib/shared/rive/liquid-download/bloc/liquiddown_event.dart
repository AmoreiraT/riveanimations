part of 'liquiddown_bloc.dart';

abstract class LiquiddownEvent extends Equatable {
  SMIBool? bump;
  SMINumber? input;

  late StateMachineController? controller;
  final Artboard artboard;
  LiquiddownEvent({required this.artboard});

  @override
  List<Object> get props => [];
}

class LiquiddownDefault extends LiquiddownEvent {
  SMIBool? bump;
  SMINumber? input;

  late StateMachineController? controller;
  final Artboard artboard;

  LiquiddownDefault({
    this.bump,
    this.input,
    this.controller,
    required this.artboard,
  }) : super(artboard: artboard);
}

class Liquiddownloadind extends LiquiddownEvent {
  SMIBool? bump;
  Artboard artboard;
  SMINumber? input;

  Liquiddownloadind({
    this.bump,
    this.input,
    required this.artboard,
  }) : super(artboard: artboard);
}

class LiquiddownInput extends LiquiddownEvent {
  SMIBool? bump;
  Artboard artboard;
  SMINumber? input;

  LiquiddownInput({
    this.bump,
    this.input,
    required this.artboard,
  }) : super(artboard: artboard);
}

part of 'liquiddown_bloc.dart';

abstract class LiquiddownState extends Equatable {
  const LiquiddownState();

  @override
  List<Object> get props => [];
}

class LiquiddownInitial extends LiquiddownState {}

class Liquiddownloading extends LiquiddownState {}

class Liquiddownloaded extends LiquiddownState {}

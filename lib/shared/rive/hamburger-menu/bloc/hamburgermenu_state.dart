part of 'hamburgermenu_bloc.dart';

abstract class HamburgermenuState extends Equatable {
  const HamburgermenuState();

  @override
  List<Object> get props => [];
}

class HamburgermenuInitial extends HamburgermenuState {}

class HamburgermenuClicked extends HamburgermenuState {}

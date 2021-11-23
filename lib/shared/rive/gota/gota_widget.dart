import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

class Gota extends Equatable {
  final double? width;
  final double? height;
  final BoxFit? fit;
  final RiveAnimationController? controller;

  Gota({
    this.width,
    this.height,
    this.fit,
    this.controller,
  });

  @override
  List<Object?> get props => [
        width,
        height,
        fit,
        controller,
      ];
}

class GotaWidget extends StatelessWidget {
  const GotaWidget({
    Key? key,
    this.width,
    this.height,
    required this.fit,
  }) : super(key: key);
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: RiveAnimation.asset(
        'assets/riv/gota.riv',
        fit: fit,
        controllers: [],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riveanimations/core/presentation/home/home.dart';
import 'package:bloc/bloc.dart';

import 'package:riveanimations/shared/rive/gota/gota_widget.dart';
import 'package:riveanimations/shared/rive/hamburger-menu/hamburger.dart';
import 'package:riveanimations/shared/rive/liquid-download/bloc/liquiddown_bloc.dart';
import 'package:riveanimations/shared/rive/liquid-download/liquid_download.dart';
import 'package:riveanimations/shared/rive/vehicles/bloc/vehicles_bloc.dart';

import 'package:riveanimations/shared/rive/vehicles/vehicles.dart';

import 'shared/rive/hamburger-menu/bloc/hamburgermenu_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VehiclesBloc>(
          create: (BuildContext context) => VehiclesBloc(),
          child: Vehicle(),
        ),
        BlocProvider<LiquiddownBloc>(
          create: (BuildContext context) => LiquiddownBloc(),
          child: LiquidDown(),
        ),
        BlocProvider<HamburgermenuBloc>(
          create: (BuildContext context) => HamburgermenuBloc(),
          child: HamburgerMenu(),
        ),
      ],
      child: MaterialApp(
        title: 'Rive Animations',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home(),
      ),
    );
  }
}

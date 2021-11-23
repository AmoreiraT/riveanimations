import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'package:riveanimations/shared/rive/gota/gota_widget.dart';
import 'package:riveanimations/shared/rive/hamburger-menu/hamburger.dart';
import 'package:riveanimations/shared/rive/liquid-download/liquid_download.dart';
import 'package:riveanimations/shared/rive/vehicles/bloc/vehicles_bloc.dart';

import 'package:riveanimations/shared/rive/vehicles/vehicles.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<VehiclesBloc>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(12.0),
          child: HamburgerMenu(),
        ),
        title: Text('Rive Animations'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            HamburgerMenu(),
            LiquidDown(),
            Vehicle(),
            GotaWidget(
              width: 3,
              height: 250,
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GotaWidget(
                  width: 40,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                GotaWidget(
                  width: 20,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                GotaWidget(
                  width: 20,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

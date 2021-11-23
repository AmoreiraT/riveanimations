import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

import 'bloc/vehicles_bloc.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<VehiclesBloc>(context);

    return BlocBuilder<VehiclesBloc, VehiclesState>(
      bloc: bloc,
      builder: (context, state) {
        return Container(
          width: 200,
          height: 200,
          child: GestureDetector(
            child: RiveAnimation.network(
              'https://cdn.rive.app/animations/vehicles.riv',
              fit: BoxFit.cover,
              onInit: (Artboard artboard) => bloc.add(
                VehiclesDefault(
                  artboard: artboard,
                ),
              ),
            ),
            onTap: () => bloc.add(
              VehicleTouched(
                artboard: bloc.artboard,
                bump: bloc.bump,
              ),
            ),
          ),
        );
      },
    );
  }
}

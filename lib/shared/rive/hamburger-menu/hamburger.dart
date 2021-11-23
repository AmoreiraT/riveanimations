import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'dart:convert';

import 'package:riveanimations/shared/rive/hamburger-menu/bloc/hamburgermenu_bloc.dart';

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<HamburgermenuBloc>(context);
    return BlocBuilder<HamburgermenuBloc, HamburgermenuState>(
      builder: (context, state) {
        return Container(
          width: 50,
          height: 50,
          child: GestureDetector(
            onTap: () => bloc.add(
              HamburgerMenuClick(
                bump: bloc.bump,
                artboard: bloc.artboard,
              ),
            ),
            child: RiveAnimation.asset(
              'assets/riv/hamburger-menu.riv',
              fit: BoxFit.contain,
              onInit: (Artboard artboard) => bloc.add(
                HamburgerMenuInit(
                  artboard: artboard,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

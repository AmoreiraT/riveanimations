import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

import 'bloc/liquiddown_bloc.dart';

class LiquidDown extends StatelessWidget {
  const LiquidDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<LiquiddownBloc>(context);
    return BlocBuilder<LiquiddownBloc, LiquiddownState>(
      builder: (context, state) {
        return SizedBox(
          width: 200,
          height: 200,
          child: GestureDetector(
            child: RiveAnimation.asset(
              'assets/riv/liquid-download.riv',
              fit: BoxFit.cover,
              onInit: (Artboard artboard) => bloc.add(
                LiquiddownDefault(
                  input: bloc.input,
                  artboard: artboard,
                ),
              ),
            ),
            onTap: () => bloc.add(
              Liquiddownloadind(
                input: bloc.input,
                artboard: bloc.artboard,
                bump: bloc.bump,
              ),
            ),
            onDoubleTap: () => bloc.add(
              LiquiddownInput(
                input: bloc.input,
                artboard: bloc.artboard,
              ),
            ),
          ),
        );
      },
    );
  }
}








// class LiquidDown extends StatefulWidget {
//   LiquidDown({Key? key}) : super(key: key);

//   @override
//   _LiquidDownState createState() => _LiquidDownState();
// }

// class _LiquidDownState extends State<LiquidDown> {
//   SMIBool? _bump;
//   onRiveInit(Artboard artboard) {
//     final controller = StateMachineController.fromArtboard(
//       artboard,
//       'Guido SM',
//     );
//     artboard.addController(controller!);
//     _bump = controller.findInput<bool>('Downloading') as SMIBool;
//   }

//   hitBump() => _bump?.change(true);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       height: 200,
//       child: GestureDetector(
//         child: RiveAnimation.asset(
//           'assets/riv/liquid-download.riv',
//           fit: BoxFit.cover,
//           onInit: onRiveInit,
//         ),
//         onTap: hitBump,
//         onDoubleTap: () => _bump?.change(false),
//       ),
//     );
//   }
// }

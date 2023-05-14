import 'package:flutter/material.dart';
import 'package:xylophone_app/build_landscape.dart';
import 'package:xylophone_app/build_portrait.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return const BuildPortrait(
          orientation: Orientation.portrait,
        );
      } else {
        return const BuildLandscape(
          orientation: Orientation.landscape,
        );
      }
    });
  }
}

import 'package:flutter/material.dart';
import 'custom_container.dart';

class BuildLandscape extends StatelessWidget {
  final Orientation orientation;
  const BuildLandscape({super.key, required this.orientation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomContainer(
                  color: const Color(0xffB2A4FF),
                  orientation: orientation,
                  noteNumber: 1),
              CustomContainer(
                  color: const Color(0xffFFB4B4),
                  orientation: orientation,
                  noteNumber: 2),
              CustomContainer(
                  color: const Color(0xffCEEDC7),
                  orientation: orientation,
                  noteNumber: 3),
              CustomContainer(
                  color: const Color(0xffA8D1D1),
                  orientation: orientation,
                  noteNumber: 4),
              CustomContainer(
                  color: const Color(0xff65647C),
                  orientation: orientation,
                  noteNumber: 5),
              CustomContainer(
                  color: const Color(0xff90A17D),
                  orientation: orientation,
                  noteNumber: 6),
              CustomContainer(
                  color: const Color(0xffDAB88B),
                  orientation: orientation,
                  noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

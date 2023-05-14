import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color;
  final Orientation orientation;
  final int noteNumber;
  const CustomContainer(
      {super.key,
      required this.color,
      required this.orientation,
      required this.noteNumber});

  @override
  Widget build(BuildContext context) {
    void playSound(int noteNumber) {
      final player = AudioPlayer();
      AssetSource src = AssetSource('note$noteNumber.wav');
      player.play(src);
    }

    return Expanded(
      child: InkWell(
        onTap: () {
          playSound(noteNumber);
        },
        child: Container(
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: color, border: Border.all(color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: orientation == Orientation.landscape
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.black,
                      ),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.fiber_manual_record,
                        color: Colors.black,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}

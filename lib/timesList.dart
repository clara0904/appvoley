import 'package:flutter/material.dart';
import 'times.dart';
class TimesList extends StatelessWidget {
  const TimesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RotatedBox(
            quarterTurns: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                border: Border.all(color: Colors.white, width: 2),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: const Text(
                'TIMES',
                style: TextStyle(
                  fontFamily: 'ConcertOne',
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        const Expanded(
          child: Column(
            children: [
              Times(time: 'Sicranos', sizetime: '3'),
              Times(time: 'Autoconvidados', sizetime: '3'),
              Times(time: 'Ziraldos', sizetime: '4'),
              Times(time: 'Sparrings', sizetime: '5'),
            ],
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:gym/constants.dart';
import 'package:gym/gym.dart';

class Results extends StatelessWidget {
  final Gender genderChosen;
  final double intensitySelected;
  final int numOfRepsSelected;
  final int numOfSetsSelected;

  // ignore: use_key_in_widget_constructors
  const Results(this.genderChosen, this.intensitySelected, this.numOfRepsSelected, this.numOfSetsSelected);

  @override
  Widget build(BuildContext context) {
    final List quotes = [
      "The struggles that you are going through are only meant to shape you for your purpose",
      "In the middle of every difficulty lies opportunity, keep going!"
    ];

    final int volume = numOfRepsSelected * numOfSetsSelected * intensitySelected.round();
    const EdgeInsets malePadding = EdgeInsets.only(left: 20);
    const EdgeInsets femalePadding = EdgeInsets.only(left: 70);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: appbarColor,
        centerTitle: true,
        title: const Text("GAINZ CALCULATOR",
          style: TextStyle(
            color: Colors.tealAccent,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            letterSpacing: 5
          ),
        ),
      ),
      body: Container(
        padding: (genderChosen == Gender.male) ? malePadding : femalePadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Your Volume:",
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50
              ),
            ),
            Text(volume.toString(),
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              (genderChosen == Gender.male) ? quotes[0] : quotes[1],
              textAlign: TextAlign.center,
            )
          ],
        ),
      )
    );
  }
}
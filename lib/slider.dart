import 'package:flutter/material.dart';
import 'constants.dart';

class Slid extends StatelessWidget {
  final double startingValue;
  final Function changeValue;

  // ignore: use_key_in_widget_constructors
  const Slid(this.startingValue, this.changeValue);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Intensity Level"),
        Slider(
          value: startingValue, 
          activeColor: activeSliderCol,
          inactiveColor: inactiveSliderCol,
          max: maxValueOnSlider.toDouble(),
          min: 0,
          divisions: numOfDivisions,
          label: startingValue.round().toString(),
          onChanged: (double value){
            changeValue;
          }
        )
      ],
    );
  }
}


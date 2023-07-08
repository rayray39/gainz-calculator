import 'package:flutter/material.dart';
import 'package:gym/constants.dart';

class AddMinusButton extends StatelessWidget {
  final String displayedText;  // either num of sets or num of reps
  final int displayedNum;
  final void Function()? addCounter;
  final void Function()? minusCounter;

  // ignore: use_key_in_widget_constructors
  const AddMinusButton(this.displayedText, this.displayedNum, this.addCounter, this.minusCounter);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(displayedText,
          style: const TextStyle(
            color: iconTextColor,
            fontSize: 25
          ),
        ),  // display either sets or reps
        Text(displayedNum.toString(),
          style: const TextStyle(
            color: iconTextColor,
            fontSize: 40
          )
        ),  // display the counter of the reps or sets 
        Row(
          children: [
            Expanded(
              child: IconButton(  // add button to increase the displayed counter
                icon: const Icon(
                  Icons.add_circle,
                  size: 50,
                  color: iconColor,
                ),
                onPressed: addCounter
              ),
            ),
            Expanded(
              child: IconButton(  // minus button to decrease the displayed counter
                icon: const Icon(
                  Icons.remove_circle,
                  size: 50,
                  color: iconColor,
                ),
                onPressed: minusCounter
              ),
            ), 
          ],
        )
      ],
    );
  }
}
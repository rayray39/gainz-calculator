import 'package:flutter/material.dart';
import 'package:gym/constants.dart';

class ReusableCard extends StatelessWidget {
  // for gender
  final IconData displayedIcon;
  final String displayedText;
  final Color backColor;

  // ignore: use_key_in_widget_constructors
  const ReusableCard(this.displayedIcon, this.displayedText, this.backColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(  // if using BoxDecoration, color property must be specified inside
        borderRadius: BorderRadius.circular(15),
        color: backColor,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(displayedIcon,  // to display either the male or female icon
            color: reusableCardIconColor,
            size: 120,
          ),
          Text(displayedText,  // below the icon, there will be the text that states male or female
            style: const TextStyle(
              color: reusableCardTextColor,
              fontSize: 30,
              letterSpacing: 2
            ),
          )
        ],
      ),
    );
  }
}
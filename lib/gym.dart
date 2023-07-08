// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:gym/AddMinusButton.dart';
import 'package:gym/constants.dart';
import 'package:gym/results.dart';
import 'package:gym/reusablecard.dart';

enum Gender{
  male,
  female
}

class Gym extends StatefulWidget {
  const Gym({super.key});

  @override
  State<Gym> createState() => _GymState();
}

class _GymState extends State<Gym> {
  // for slider
  double intensity = 1;

  // for sets and reps buttons
  int numOfReps = 0;
  int numOfSets = 0;

  // for gender buttons
  Gender genderSelected = Gender.female;  // intialise gender selected to be female at the start  
  Color maleColor = reusableCardBackgroundColor;
  Color femaleColor = reusableCardBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GAINZ CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
                Expanded(
                  child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelected = Gender.male;
                      (genderSelected == Gender.male) ? maleColor = activeReusableCardColor : maleColor = reusableCardBackgroundColor;
                      femaleColor = reusableCardBackgroundColor;
                    });
                  },
                  child: ReusableCard(Icons.male, "MALE", maleColor)
                              ),
                ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      genderSelected = Gender.female;
                      (genderSelected == Gender.female) ? femaleColor = activeReusableCardColor : femaleColor = reusableCardBackgroundColor;
                      maleColor = reusableCardBackgroundColor;
                    });
                  },
                  child: ReusableCard(Icons.female, "FEMALE", femaleColor)
                ),
              )
            ],
          ),
          Expanded(child: Container(    // for slider widget
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Intensity Level",
                    style: TextStyle(
                      color: sliderTextCol,
                      fontSize: 35,
                      letterSpacing: 2
                    ),
                  ),
                  const SizedBox(height: 30),
                  Slider(
                    value: intensity,  // starting slider value
                    activeColor: activeSliderCol,  // active colour of slider
                    inactiveColor: inactiveSliderCol,  // inactive coilor of slider
                    divisions: numOfDivisions,  
                    max: maxValueOnSlider.toDouble(),
                    min: 0, 
                    label: intensity.round().toString(),  // label displayed on the thumb
                    onChanged: ((value) {
                      setState(() {  // as the slider is shifted, the label value changes too
                        intensity = value;
                      });
                    })
                  )
                ],
              ), 
            )
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(  // for no. of sets widget
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: AddMinusButton(
                    "Number of Sets", 
                    numOfSets, 
                    () {setState(() {
                      numOfSets++;
                    });}, 
                    () {
                      setState(() {
                        numOfSets--;
                        if (numOfSets < 0) {  // dont let counter go below zero
                          numOfSets = 0;
                        }
                      });
                    }
                  ),
                )),
                Expanded(child: Container(  // for no. of reps widget
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: AddMinusButton(
                    "Number of Reps", 
                    numOfReps, 
                    () {setState(() {
                      numOfReps++;
                    });}, 
                    () {
                      setState(() {
                        numOfReps--;
                        if (numOfReps < 0) {  // dont let counter go below zero
                          numOfReps = 0;
                        }
                      });
                    }
                  ),
                )),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                // upon pressing, navigate to another route/screen that displays the results
                Navigator.push(context, MaterialPageRoute(builder: (context) => Results(genderSelected, intensity, numOfReps, numOfSets)));
              });
            },
            child: Container(
              width: double.infinity,
              height: 60,
              color: Colors.tealAccent,
              child: const Text("CALCULATE VOLUME",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
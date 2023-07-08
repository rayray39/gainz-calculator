# gainz-calculator
calculate the amount of gains (volume) you are making at the gym!

![gainz_calculator](https://github.com/rayray39/gainz-calculator/assets/108506541/2cff5d3b-ab7e-45fb-a561-df72267ffd60)
![gainz_calculator_female](https://github.com/rayray39/gainz-calculator/assets/108506541/db893d4b-4822-454e-ad05-39a2154109e4)
![gainz_calculator_male](https://github.com/rayray39/gainz-calculator/assets/108506541/f882e43c-bd9a-4570-854b-b3b8878358ef)


Introduction
- This is a simple web application, made using Flutter, that you can use to calculate the amount of volume you are making at the gym.
- The volume is calculated based on this equation: Volume = No. of Reps x No. of Sets x Intensity 

Features (Learning Outcomes From Me)
- Separation of theme data from content makes it not only easy to reuse common themes, but also makes the code less clunky.
- Using GestureDetector and Ternary Operators in setState().
- Extracting ReusableCard Widget as a standalone class widget such that it can be reused, by changing the instance fields.
- Using Slider Widget.
- Using IconButton and extracting it as a standalone class widget that can be reused.
- Using TextButton
- Using Navigator and Routes to create a second screen/route

Future Work
- Calculation of Volume can be improved further, since intensity can be set to 0 resulting in total volume to be 0
- By choosing either Male or Female, this decides the quote that will be displayed on the second screen, however if
  no gender is chosen, then an error will be displayed on the second screen.
- Experiment with a wider variety of colour schemes.
- Add animations. 


import 'package:expanded_widget/constants.dart';
import 'package:expanded_widget/icon_content.dart';
import 'package:expanded_widget/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


enum Gender{male,female}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  Gender ? selectedGender;
  Color maleCardColor = kActiveCardColor ;
  Color femaleCardColor = kInactiveCardColor;
  int height = 150;
  int weight = 70;
  int age = 20;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("BMI CALCULATOR") ,
      ),

      body: Column(
        children: [

          Expanded(
              child:Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          child: IconContent(
                            icon: FontAwesomeIcons.mars, label:'MALE',
                          ),
                          color: selectedGender == Gender.male ?
                          kActiveCardColor : kInactiveCardColor,
                          onPress: (){
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          })
                  ),

                  Expanded(
                      child: ReusableCard(
                          child: IconContent(
                            icon: FontAwesomeIcons.venus, label:'FEMALE',
                          ),
                          color: selectedGender == Gender.female ?
                          kActiveCardColor : kInactiveCardColor,
                          onPress: (){
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          })
                  ),
                ],
              )
          ),


            Expanded(child: ReusableCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HEIGHT", style: kLabelTextStyle,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 //crossAxisAlignment:CrossAxisAlignment.baseline,

                  children: [
                    Text( height.toString(),style:  kNumberTextStyle,),
                    Text(" cm",style: kLabelTextStyle,)

                  ],
                ),

                Slider(
                  min: 120,
                    max: 220,
                    value: height.toDouble(),
                    onChanged: (value){
                    print("$value");
                    setState(() {
                      height = value.toInt();
                    });
                    })
              ],
            ),
          )),

          Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT",style: kLabelTextStyle,),
                        Text('$weight',style: kNumberTextStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {

                                  weight--;
                                });
                              },
                            ),

                            SizedBox(width: 15,),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )),
                  Expanded(child: ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",style: kLabelTextStyle,),
                        Text('$age',style: kNumberTextStyle,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {

                                  age--;
                                });
                              },
                            ),

                            SizedBox(width: 15,),

                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  )),

                ],
              )),

          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
         ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData ? icon;
  final VoidCallback ? onPress;
  const RoundIconButton({super.key, this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(onPressed: onPress,
    child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Colors.grey.shade600,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56
      ),
      elevation: 10,
    );
  }
}

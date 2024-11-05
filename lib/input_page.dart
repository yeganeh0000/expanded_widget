
import 'package:expanded_widget/icon_content.dart';
import 'package:expanded_widget/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF101E35);
const inactiveCardColor = Color(0xFF111320);
const bottomContainerColor = Color(0xFFE01555);

enum Gender{male,female}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  Gender ? selectedGender;
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  
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
                          widget: IconContent(
                            icon: FontAwesomeIcons.mars, label:'MALE',
                          ),
                          color: selectedGender == Gender.male ? activeCardColor : inactiveCardColor,
                          onPress: (){
                            setState(() {
                              selectedGender = Gender.male;
                            });
                          })
                  ),

                  Expanded(
                      child: ReusableCard(
                          widget: IconContent(
                            icon: FontAwesomeIcons.venus, label:'FEMALE',
                          ),
                          color: selectedGender == Gender.female ? activeCardColor : inactiveCardColor,
                          onPress: (){
                            setState(() {
                              selectedGender = Gender.female;
                            });
                          })
                  ),
                ],
              )
          ),


          Expanded(child: ReusableCard()),

          Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard()),
                  Expanded(child: ReusableCard()),

                ],
              )),

          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

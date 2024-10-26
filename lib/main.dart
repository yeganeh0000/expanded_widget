+import 'package:expanded_widget/myColors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
const double height = 200;
const double betweenSize = 20;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
        title: const Text("Home"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: betweenSize,),
            Row(
              children: [


                  Expanded(child: customView(height)),


                const SizedBox(width: betweenSize,),

                Expanded(child: customView(height))

              ],
            ),
            const SizedBox(height: betweenSize,),

            customView(height),

            const SizedBox(height: betweenSize,),

            Row(
              children: [


                Expanded(child: customView(height)),


                const SizedBox(width: betweenSize,),


                Expanded(child: customView(height))

              ],
            ),
            const SizedBox(height: betweenSize,),
          customView(70,
          color: Colors.red)
          ],
        ),
      ),

    );
  }

  Widget customView(double height,{color}){
    return   Container(
          height: height,
          decoration: BoxDecoration(
      color: color ?? MyColors.boxColor,
      borderRadius: BorderRadius.circular(10)
          ),
        );
  }
}




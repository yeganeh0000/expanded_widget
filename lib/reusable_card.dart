
import 'package:flutter/material.dart';


const activeCardColor = Color(0xFF101E33);

class ReusableCard extends StatelessWidget {
  final void Function() ? onPress;
  final Color ? color;
  final Widget ? child;
  const ReusableCard({super.key,  this.onPress, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
       margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color ?? activeCardColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: child,
      ),
    );
  }
}

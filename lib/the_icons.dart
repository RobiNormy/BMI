import 'package:flutter/material.dart';
import 'constants.dart';
class myCards extends StatelessWidget {
  const myCards({super.key,  this.myIcons, this.theText });
  final IconData? myIcons;
  final String? theText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 15.0,
        ),
        Icon(myIcons,size: 50,color: Colors.white,),
        SizedBox(
          height: 20.0,
        ),
        Text(theText!,style: ktheStyle,)
      ],

    );
  }
}

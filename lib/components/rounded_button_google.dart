import 'package:flutter/material.dart';

class RoundedButtonG extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButtonG({
    Key key,
    this.text,
    this.press,
    this.color = Colors.white,
    this.textColor = Colors.black,
    TextStyle style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: newElevatedButton(),
      ),
    );
  }

  //Used:ElevatedButton as FlatButton is deprecated.
  //Here we have to apply customizations to Button by inheriting the styleFrom

  Widget newElevatedButton() {
    return ElevatedButton(
      onPressed: press,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/images/google.png',
          height: 25,
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ]),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
          primary: color,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),),
    );
  }
}

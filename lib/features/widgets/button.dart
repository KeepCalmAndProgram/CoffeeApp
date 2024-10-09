import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () { },
      child: Text('START'),
    );
  }
}

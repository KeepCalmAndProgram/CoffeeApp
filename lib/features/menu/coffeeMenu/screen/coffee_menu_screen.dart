import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/coffee_card_widget.dart';

class CoffeeMenuScreen extends StatefulWidget {
  const CoffeeMenuScreen({Key? key}) : super(key: key);

  @override
  State<CoffeeMenuScreen> createState() => _CoffeeMenuScreenState();
}

class _CoffeeMenuScreenState extends State<CoffeeMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coffee",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Column(
        children: [
          CoffeeCardWidget();
          CoffeeCardWidget();
          CoffeeCardWidget();
        ],
      )
    );
  }
}

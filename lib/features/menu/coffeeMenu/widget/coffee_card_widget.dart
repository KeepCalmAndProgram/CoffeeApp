import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeCardWidget extends StatelessWidget {
  const CoffeeCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onBackground,
      child: Column(
        children: [
          Row(
            children: [
              Image.network('https://picsum.photos/250?image=9'),
              Column(
                children: [
                  Text("Americano"),
                  Row(
                    children: [
                      Text("10"),
                      Text("add"),

                      /// must to add some increnent button
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

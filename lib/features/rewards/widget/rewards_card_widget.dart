import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RewardsCardWidget extends StatelessWidget {
  const RewardsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Stack(
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("here you image"),
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text("text reward"),
            ),
          ),
        ],
      ),
    );
  }
}

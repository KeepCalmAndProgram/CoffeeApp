import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointGoolWidget extends StatelessWidget {
  const PointGoolWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.onBackground,
        child: Stack(
          children: [
            /// here start to drow a line and break pointsto be able to view achievements
          ],
        )
      );
    }
  }
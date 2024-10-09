import 'package:coffee_app/features/rewards/widget/rewards_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../helpers/line_draw.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Rewards",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.onBackground,
        child: Column(
          children: [
            Text("Point Balance"),
            Text("0"),
            CustomPaint(
              size: Size(200, 100),
              painter: LineDraw(progress: 1),
            ),
            RewardsCardWidget(),
            RewardsCardWidget(),
            RewardsCardWidget(),
            RewardsCardWidget(),
          ],
        ),
      ),
    );
  }
}

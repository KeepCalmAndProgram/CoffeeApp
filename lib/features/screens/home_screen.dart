import 'package:coffee_app/features/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coffee App"),
      ),
      body: Center(
        /// change collumn to stack
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Image.asset(
                'assets/image/cafe_outside.jpeg',
                height: 50,
                //fit: BoxFit.cover,
                width: 50,
              ),
            ),
            Button(),
          ],
        ),
      ),
    );
  }
}

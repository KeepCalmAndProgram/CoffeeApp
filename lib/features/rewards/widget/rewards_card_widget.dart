import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RewardsCardWidget extends StatelessWidget {
  const RewardsCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: Image.asset(
                'assets/image/test.jpeg',
                height: 50,
                //fit: BoxFit.cover,
                width: 50,
              ),
            ),
            Text(
              'loren ipsum',
              style: TextStyle(color: Colors.white),
            ),
            /*const ListTile(
              title: Text(
                '10 Successfully Made Coffees',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Loren ipsum loren ipsum Loren ipsum Loren ipsum Loren ipsum Loren ipsum Loren ipsum',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../util/time_helper.dart';
import 'Search_Screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.focused,
        MaterialState.hovered,
        MaterialState.pressed,
      };

      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.black26;
    }

    var timeOfTheDay = TimeHelper.getTimeOfTheDay(DateTime.now());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/$timeOfTheDay.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 64),
            FittedBox(
              child: Text(
                "Good $timeOfTheDay",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => SearchScreen()));
                },
                child: Text('Weather Search'),
                style: ButtonStyle(
                   
                  backgroundColor: MaterialStateProperty.resolveWith(getColor),
                )),
          ],
        ),
      ),
    );
  }
}

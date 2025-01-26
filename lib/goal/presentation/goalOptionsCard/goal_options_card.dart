import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class GoalOptionsCard extends StatefulWidget {
  const GoalOptionsCard({super.key});

  @override
  State<GoalOptionsCard> createState() =>
      _GoalOptionsCardState();
}

class _GoalOptionsCardState extends
State<GoalOptionsCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          children: [

            Row(
              children: [
                Text('43/999')
              ],
            ),

            SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Symbols.bar_chart,
                weight: 100,
              ),
            ),

            SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Symbols.edit,
                weight: 100,
              ),
            ),


            SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Symbols.delete,
                weight: 100,
              ),
            ),

            SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Symbols.search,
                weight: 100,
              ),
            ),

            SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Symbols.list,
                weight: 100,
              ),
            ),


            SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Symbols.info,
                weight: 100,
              ),
            ),


          ],
        ),
      ),
    );
  }
}

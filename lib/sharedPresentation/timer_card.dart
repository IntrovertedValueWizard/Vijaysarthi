import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:vijaysarthi/sharedPresentation/labeled_widget.dart';


class TimerCard extends StatefulWidget {
  const TimerCard({super.key});

  @override
  State<TimerCard> createState() => _TimerCardState();
}

class _TimerCardState extends State<TimerCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: Row(

          crossAxisAlignment:
          CrossAxisAlignment.center,

          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

          children: [

            IconButton(onPressed: (){},
                icon: Icon(
                    Symbols.navigate_before
                )),

            IconButton(onPressed: (){},
                icon: Icon(
                    Symbols.play_arrow
                )),

            IconButton(onPressed: (){},
                icon: Icon(
                    Symbols.device_reset
                )),

            LabeledWidget(

                headingWidget:
                Text('10/99'),

                label: 'Timer no.'
            ),

            LabeledWidget(

                headingWidget:
                Text('00:00:00'),

                label: 'Assigned Time'
            ),

            LabeledWidget(

                headingWidget:
                Text('00:00:00'),

                label: 'Remaining Time'
            ),

            LabeledWidget(

                headingWidget:
                Text('10/99'),

                label: 'Timer Run no.'
            ),

            LabeledWidget(

                headingWidget:
                    Icon(
                      Symbols.repeat
                    ),

                label: 'Auto Loop'),

            IconButton(onPressed: (){},
                icon: Icon(
                    Symbols.navigate_next
                )),

          ],
        ),
      ),
    );
  }
}



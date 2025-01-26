import 'package:flutter/material.dart';
import 'package:vijaysarthi/goal/domain/model/goal_model.dart';
import 'package:vijaysarthi/sharedPresentation/timer_card.dart';

import '../core/enums/entity_types.dart';

class ListCard extends StatefulWidget {
  final String title;
  const ListCard({
    super.key,
    required this.title
  });

  @override
  State<ListCard> createState() =>
      _ListCardState();
}

class _ListCardState extends
State<ListCard> {
  bool isExpanded = false;
  String state = "Options";
  Entity entity = Entity.goal;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Card(
            child: ListTile(
              title:
              Text(widget.title),
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ),
        ),
        if (isExpanded)
          SizedBox(
            height: 50,
            child: TimerCard(),
          ),
      ],
    );
  }
}

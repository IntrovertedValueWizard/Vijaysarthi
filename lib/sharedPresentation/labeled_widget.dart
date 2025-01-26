import 'package:flutter/material.dart';

class LabeledWidget extends StatefulWidget{

  final Widget headingWidget;
  final String label;

  const LabeledWidget({
    super.key,
    required this.headingWidget,
    required this.label
  });

  @override
  State<LabeledWidget> createState() =>
      _LabeledWidgetState();

}

class _LabeledWidgetState extends
State<LabeledWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment:
      MainAxisAlignment.center,

      crossAxisAlignment:
      CrossAxisAlignment.center,

      children: [
        widget.headingWidget,
        Text(
          widget.label,
          style: Theme.of(context)
              .textTheme.labelSmall,
        )
      ],
    );
  }
}


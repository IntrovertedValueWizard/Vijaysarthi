import 'package:flutter/material.dart';

@immutable
abstract class ListGoalEvent{}

class NavigateToAddGoalPageEvent extends
    ListGoalEvent{}
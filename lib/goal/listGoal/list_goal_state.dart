import 'package:flutter/material.dart';

@immutable
abstract  class ListGoalState{}

class ListGoalActionState extends
    ListGoalState{}

class ListGoalInitialState extends 
    ListGoalState{}

class ListGoalNavigateToAddGoalState extends
    ListGoalActionState{}
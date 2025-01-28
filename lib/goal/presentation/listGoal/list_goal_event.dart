part of 'list_goal_bloc.dart';

@immutable
sealed class ListGoalEvent {}

class ListAllGoalsEvent extends
    ListGoalEvent {}

class NavigateToAddGoalEvent extends
    ListGoalEvent {}

class ListGoalInitialEvent extends
    ListGoalEvent{}

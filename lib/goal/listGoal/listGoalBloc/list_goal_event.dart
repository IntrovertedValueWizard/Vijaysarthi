part of 'list_goal_bloc.dart';

@immutable
abstract class ListGoalEvent {}

class NavToEditGoal extends ListGoalEvent {}
class DeleteGoal extends ListGoalEvent {}
class NavToAddGoal extends ListGoalEvent {}
class NavToSubGoals extends ListGoalEvent {}
class NavToGoal extends ListGoalEvent {}

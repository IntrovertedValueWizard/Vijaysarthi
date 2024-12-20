part of 'list_goal_bloc.dart';

@immutable
sealed class ListGoalState {}

abstract class ListGoalActionState extends
ListGoalState {}

class ListGoalInitial extends
ListGoalState {}

class ListGoalLoadingState extends
ListGoalState {}

class ListGoalSuccessState extends
ListGoalState {}

class ListGoalErrorState extends
ListGoalState {}

class NavigateToAddGoalPage extends
ListGoalActionState {}

class NavToEditGoalPageState extends
ListGoalActionState {}





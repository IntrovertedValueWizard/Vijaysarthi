part of 'list_goal_bloc.dart';

@immutable
final class ListGoalState {}

final class ListGoalActionState extends
    ListGoalState {}

final class ListGoalInitial extends
ListGoalState {}

final class ListGoalLoadingState extends
    ListGoalState {}

final class ListGoalErrorState extends
    ListGoalState {
  final String message;

  ListGoalErrorState({
    required this.message
});
}

final class ListGoalLoadedState extends
ListGoalState {
  final List<GoalModel> goals;

  ListGoalLoadedState({
    required this.goals
});
}

final class NavigateToAddGoalState extends
    ListGoalActionState {}

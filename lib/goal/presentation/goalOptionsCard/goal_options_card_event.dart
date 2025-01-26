part of 'goal_options_card_bloc.dart';

@immutable
sealed class GoalOptionsCardEvent {}

class NavigateToEditGoalEvent extends
GoalOptionsCardEvent {
  final String id;

  NavigateToEditGoalEvent({
    required this.id
  });
}

class NavigateToDeleteGoalEvent extends
GoalOptionsCardEvent {
  final String id;

  NavigateToDeleteGoalEvent({
    required this.id
  });
}

class NavigateToGoalExpansionEvent extends
GoalOptionsCardEvent {
  final String id;

  NavigateToGoalExpansionEvent({
    required this.id
  });
}
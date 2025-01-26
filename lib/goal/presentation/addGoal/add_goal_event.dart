part of 'add_goal_bloc.dart';

@immutable
sealed class AddGoalEvent {}

final class InsertGoalEvent extends
    AddGoalEvent {
    final GoalModel model;
    InsertGoalEvent({
        required this.model
    });
}

final class NavToListGoalPage extends
AddGoalEvent {}

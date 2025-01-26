part of 'add_goal_bloc.dart';

@immutable
sealed class AddGoalState {}

final class AddGoalInitial extends
AddGoalState {}

abstract class AddGoalActionState extends
    AddGoalState {}

final class InsertingGoalState extends
    AddGoalState {}

final class SuccessfulInsertAddGoalState
extends AddGoalState {}

final class ErrorInsertAddGoalState
extends AddGoalState {}

final class NavigateToListGoalState extends
    AddGoalActionState {}

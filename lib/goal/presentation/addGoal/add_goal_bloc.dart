import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:vijaysarthi/goal/data/repository/sql_goal_repo.dart';
import 'package:vijaysarthi/goal/domain/repository/goal_repo.dart';

import '../../domain/model/goal_model.dart';

part 'add_goal_event.dart';
part 'add_goal_state.dart';

class AddGoalBloc extends Bloc<AddGoalEvent, AddGoalState> {
  AddGoalBloc() : super(AddGoalInitial()) {

    on<InsertGoalEvent>(
      insertGoalEvent
    );

    on<NavToListGoalPage>(
     navToListGoalPage
    );

  }

  FutureOr<void> insertGoalEvent(
      InsertGoalEvent event,
      Emitter<AddGoalState> emit) async {
    emit(InsertingGoalState());
    await GetIt.I.get<GoalRepo>()
        .addGoal(event.model);
    emit(SuccessfulInsertAddGoalState());
    emit(NavigateToListGoalState());
  }

  FutureOr<void> navToListGoalPage(
      NavToListGoalPage event,
      Emitter<AddGoalState> emit) {
    emit(NavigateToListGoalState());
  }
}

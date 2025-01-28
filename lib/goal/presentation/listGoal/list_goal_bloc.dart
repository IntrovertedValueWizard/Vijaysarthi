import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:vijaysarthi/goal/data/repository/sql_goal_repo.dart';
import 'package:vijaysarthi/goal/domain/model/goal_model.dart';
import 'package:vijaysarthi/goal/domain/repository/goal_repo.dart';

part 'list_goal_event.dart';
part 'list_goal_state.dart';

class ListGoalBloc extends Bloc<ListGoalEvent,
    ListGoalState> {
  ListGoalBloc() : super(ListGoalInitial()) {

    on<ListAllGoalsEvent>(
      listAllGoalsEvent
    );

    on<NavigateToAddGoalEvent>(
        navigateToAddGoalEvent
    );

    on<ListGoalInitialEvent>(
    listGoalInitialEvent
    );

    add(ListAllGoalsEvent());

  }


  FutureOr<void> navigateToAddGoalEvent(
      NavigateToAddGoalEvent event,
      Emitter<ListGoalState> emit) {
    emit(NavigateToAddGoalState());
    emit(ListGoalLoadingState());
  }


  FutureOr<void> listAllGoalsEvent(
      ListAllGoalsEvent event,
      Emitter<ListGoalState> emit
      ) async {
    emit(ListGoalLoadingState());
    var list = await GetIt.I
        .get<GoalRepo>()
        .readGoals();
    print(list.length);
    emit(ListGoalLoadedState(goals: list));
  }

  FutureOr<void> listGoalInitialEvent(
      ListGoalInitialEvent event,
      Emitter<ListGoalState> emit) async {
    await GetIt.I
        .get<GoalRepo>()
        .readGoals();
  }
}

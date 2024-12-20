import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'list_goal_event.dart';
part 'list_goal_state.dart';

class ListGoalBloc extends 
Bloc<ListGoalEvent, ListGoalState> {
  ListGoalBloc() : super(ListGoalInitial()) 
  {
    on<NavToEditGoal>(editGoal);
    on<DeleteGoal>(deleteGoal);
  }

  FutureOr<void> editGoal(
      NavToEditGoal event,
      Emitter<ListGoalState> emit
      ) {
    emit(NavToEditGoalPageState());
    print('edit clicked');
  }

  FutureOr<void> deleteGoal(
      DeleteGoal event,
      Emitter<ListGoalState> emit
      ) {
    print('delete clicked');
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_event.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_state.dart';

class ListGoalBloc extends Bloc<
ListGoalEvent, ListGoalState>{
  ListGoalBloc() : super(
      ListGoalInitialState()){
   on<NavigateToAddGoalPageEvent>(
       navigateToAddGoalPageEvent
   );
  }




  FutureOr<void> navigateToAddGoalPageEvent(
      NavigateToAddGoalPageEvent event,
      Emitter<ListGoalState> emit
      ) {
    print('object');
    emit(ListGoalNavigateToAddGoalState());
  }

}

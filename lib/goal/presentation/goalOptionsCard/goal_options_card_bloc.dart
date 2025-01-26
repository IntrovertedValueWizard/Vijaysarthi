import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'goal_options_card_event.dart';
part 'goal_options_card_state.dart';

class GoalOptionsCardBloc extends Bloc<GoalOptionsCardEvent, GoalOptionsCardState> {
  GoalOptionsCardBloc() : super(GoalOptionsCardInitial()) {
    on<GoalOptionsCardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

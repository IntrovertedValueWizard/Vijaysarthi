import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:vijaysarthi/core/navigation/route_consts.dart';
import 'package:vijaysarthi/sharedPresentation/list_card.dart';

import 'list_goal_bloc.dart';

class ListGoalPage extends StatelessWidget {
  const ListGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
        ListGoalBloc,
        ListGoalState>(
      bloc: GetIt.I.get<ListGoalBloc>(),
      listenWhen: (previous, current) =>
      current is ListGoalActionState,
      buildWhen: (previous, current) =>
      current is !ListGoalActionState,
      listener: (context, state) {
        if(state is NavigateToAddGoalState){
          GoRouter.of(context).pushNamed(
            RouteConsts.addGoal
          );
        }else if( state is ListGoalInitial){
        }
      },
      builder: (context, state) {
        if(state is ListGoalLoadingState){

          GetIt.I.get<ListGoalBloc>()
          .add(ListAllGoalsEvent());

          return Container(
            child: Center(child:
          LinearProgressIndicator()
            ,),);
        } else if (state is ListGoalLoadedState){
          return Scaffold(
            floatingActionButton:
            FloatingActionButton.small(
              onPressed: () {
                GetIt.I.get<ListGoalBloc>()
                    .add(
                    NavigateToAddGoalEvent()
                );
              },

              child: const Icon(
                Symbols.add,
                weight: 100,
              ),
            ),

            body: ListView.builder(
                itemBuilder: (context, i){
                  return ListCard(
                      title: state
                          .goals[i].title);
                },
            itemCount: state.goals.length,) ,
          );
        }else{
          return LinearProgressIndicator();
        }
      },
    );
  }
}

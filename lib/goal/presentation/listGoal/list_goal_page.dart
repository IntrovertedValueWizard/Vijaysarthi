import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:get_it/get_it.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../core/navigation/route_consts.dart';
import '../../../sharedPresentation/list_card.dart';
import 'list_goal_bloc.dart';


class ListGoalPage extends StatelessWidget {
  const ListGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListGoalBloc, ListGoalState>(
      bloc: GetIt.I.get<ListGoalBloc>(),
      listenWhen: (previous, current) => current is NavigateToAddGoalState,
      listener: (context, state) {
        GoRouter.of(context).pushNamed(RouteConsts.addGoal);
      },
      child: BlocBuilder<
          ListGoalBloc,
          ListGoalState>(
        bloc: GetIt.I.get<ListGoalBloc>(),
        builder: (context, state) {
          if (state is ListGoalInitial) {
            GetIt.I.get<ListGoalBloc>()
                .add(ListAllGoalsEvent());
            return const Center(
              child: SizedBox(
                height: 2,
                width: 200,
                child: LinearProgressIndicator(),
              ),
            );
          } else if (
          state is ListGoalLoadingState) {
            return const Center(
              child: SizedBox(
                height: 2,
                width: 200,
                child: LinearProgressIndicator(),
              ),
            );
          } else if (
          state is ListGoalLoadedState
          ) {
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
                itemBuilder: (context, i) {
                  return ListCard(
                    title: state.goals[i].title,
                  );
                },
                itemCount: state.goals.length,
              ),
            );
          } else {
            return const Center(
              child: SizedBox(
                height: 2,
                width: 200,
                child: LinearProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
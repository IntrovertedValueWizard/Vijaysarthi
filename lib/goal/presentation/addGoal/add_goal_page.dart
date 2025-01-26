import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:uuid/uuid.dart';
import 'package:vijaysarthi/core/navigation/route_consts.dart';

import '../../domain/model/goal_model.dart';
import 'add_goal_bloc.dart';

class AddGoalPage extends StatelessWidget {
  const AddGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController =
        TextEditingController();
    return BlocConsumer<
        AddGoalBloc,
        AddGoalState>(
      bloc: GetIt.I.get<AddGoalBloc>(),
      listenWhen: (previous, current) =>
      current is AddGoalActionState,
      buildWhen: (previous, current) =>
      current is !AddGoalActionState,
      listener: (context, state) {

        if(state is NavigateToListGoalState){
          GoRouter.of(context).pushNamed(
            RouteConsts.listGoal
          );
        }


      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets
                .all(8.0),
            child: Column(
              crossAxisAlignment:
                CrossAxisAlignment.center,
              children: [

                TextField(
                  controller: titleController,
                  decoration:
                  InputDecoration(
                    label: const Text(
                        'Title'),
                    border:
                    OutlineInputBorder(
                        borderRadius:
                        BorderRadius
                            .circular(4.0)
                    )
                  ),
                ),

                const SizedBox(height: 15),

                ElevatedButton(
                    onPressed: (){
                      GetIt.I.get<
                          AddGoalBloc>()
                      .add(
                        InsertGoalEvent(
                          model:
                          GoalModel(
                            id: const Uuid()
                                .v4(),
                            title:
                              titleController
                                  .text
                          )
                        )
                      );
                    },
                    child: const Text(
                        'Save')
                ),

                const SizedBox(height: 15),

                ElevatedButton(
                    onPressed: (){
                      GetIt.I
                          .get<
                          AddGoalBloc>()
                          .add(
                          NavToListGoalPage()
                      );

                    },
                    child: const Text(
                        'Cancel')
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

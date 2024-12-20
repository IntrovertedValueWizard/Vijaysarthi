import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'listGoalBloc/list_goal_bloc.dart';

class ListGoalCardOptions
    extends StatelessWidget {
  const ListGoalCardOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: 240,
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  GetIt.I.get<
                      ListGoalBloc
                  >().add(
                      NavToEditGoal()
                  );
                },
                icon: const Icon(
                  weight: 200,
                  Symbols.edit,
                )
            ),
            IconButton(
                onPressed: () {
                  GetIt.I.get<
                      ListGoalBloc
                  >().add(
                      DeleteGoal()
                  );
                },
                icon: const Icon(
                    Symbols.delete_outline,
                    weight: 300
                )
            ),
            const Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child:
                  CircularProgressIndicator(
                      value: 0.6,
                      strokeWidth: 2
                  ),
                ),
                Text(
                  '60'
                  ,
                  style: TextStyle(
                      fontSize: 11
                  ),
                )
              ],
            ),
            const SizedBox(width: 15),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const
                  BorderRadius
                      .all(
                      Radius
                          .circular(10)
                  ),
                  border: Border
                      .all(width: 1)
              ),
              child: const Padding(
                padding: EdgeInsets
                    .all(8.0),
                child: SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .center,
                    children: [
                      Text(
                        'Behind 99 Tasks',
                        style:
                        TextStyle(
                            fontSize: 11
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
  }
}

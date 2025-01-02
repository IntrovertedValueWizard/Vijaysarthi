import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vijaysarthi/navigation/app_route_constants.dart';

class BaseAddEditScreen extends
StatelessWidget {

  final Widget?
  uiBetweenDescriptionAndEssentials;

  final Widget?
  uiBetweenEssentialsAndSaveButton;

  const BaseAddEditScreen({
    super.key,
    this.uiBetweenDescriptionAndEssentials,
    this.uiBetweenEssentialsAndSaveButton
  });

  @override
  Widget build(BuildContext context) {
    var titleText = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: titleText,
              decoration: const
              InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Title'
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Description'
              ),
            ),
            const SizedBox(height: 10,),
            const SizedBox(width: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment:
                    MainAxisAlignment
                    .spaceEvenly,
                    children: [
                  ElevatedButton(
                      onPressed: (){
                        GoRouter
                            .of(context)
                            .pushNamed(
                          VijaysarthiRouteConstants
                          .listGoalRoute
                        );
                      },
                      style: ButtonStyle(),
                      child:
                      const Text('Save')
                  ),
                  ElevatedButton(
                      onPressed: (){
                      },
                      child:
                      const Text('Cancel')
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}

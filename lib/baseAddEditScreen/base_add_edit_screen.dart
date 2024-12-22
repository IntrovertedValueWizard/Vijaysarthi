import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
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
            Column(
              children: [
                TextButton(onPressed: (){

                },
                child: const Text('Save')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

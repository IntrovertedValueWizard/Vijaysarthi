import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:vijaysarthi/goal/addGoal/add_goal.dart';
import 'package:vijaysarthi/goal/listGoal/list_goal_page.dart';
import 'package:vijaysarthi/main.dart' as app;

void main(){
 IntegrationTestWidgetsFlutterBinding
 .ensureInitialized();
 
 group(
     'testing add Goal works',
         (){
       testWidgets(
           'verify add goal screen',
               (tester) async {

             app.main();

             await tester.pumpAndSettle();
             await tester.tap(
               find
               .byType(FloatingActionButton)
             );
             await tester.pumpAndSettle();

             expect(
                 find.byType(
                     AddGoalPage
                 ),
                 findsOneWidget
             );

             await tester.enterText(
                 find
                 .byType(
                   TextField
                 ).at(0),
                 'First One'
             );

             await tester.tap(
               find.byType(
                 ElevatedButton
               ).at(0)
             );
             await tester.pumpAndSettle();

             expect(
                 find.byType(
                     ListGoalsPage
                 ),
                 findsOneWidget
             );
           }
       );
     }
 );
}
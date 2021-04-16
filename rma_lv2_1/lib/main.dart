import 'package:flutter/material.dart';
import 'package:rma_lv2_1/screens/edit_person_screen.dart';

import 'package:rma_lv2_1/screens/new_person_screen.dart';
import './screens/people.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RMA Lv2',
      initialRoute: '/',
      routes: {
        '/': (ctx) => PeopleScreen(),
        NewPersonScreen.routeName: (ctx) => NewPersonScreen(),
        EditPersonScreen.routeName: (ctx) => EditPersonScreen(),
      },
    );
  }
}

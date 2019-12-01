import 'package:flutter/material.dart';
import 'home_widget.dart';

void main() => runApp(MyTabs());


class MyTabs extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'My Flutter App',
     home: Home(),
   );
 }
}
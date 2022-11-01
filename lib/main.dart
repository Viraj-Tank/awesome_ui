import 'package:awesome_ui/travel_ui/screens/activity_screen.dart';
import 'package:awesome_ui/travel_ui/screens/hotel_screen.dart';
import 'package:awesome_ui/travel_ui/travel.dart';
import 'package:awesome_ui/travel_ui/widgets/side_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Travel());
}

class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/activities',
      routes: {
        ActivitiesScreen.routeName: (context) => ActivitiesScreen(),
        HotelsScreen.routeName: (context) => HotelsScreen(),
      },
      builder: (context, child) {
        return TravelApp(
          navigator: (child!.key as GlobalKey<NavigatorState>),
          child: child,
        );
      },
    );
  }
}

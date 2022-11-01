import 'package:flutter/material.dart';
import 'widgets/side_bar.dart';

class TravelApp extends StatefulWidget {
  const TravelApp({
    Key? key,
    required this.navigator,
    required this.child,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigator;
  final Widget child;

  @override
  State<TravelApp> createState() => __TravelAppState();
}

class __TravelAppState extends State<TravelApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF5EDDC),
      body: Row(
        children: [
          SideBar(
            height: height,
            width: width,
            navigator: widget.navigator,
          ),
          Expanded(
            child: widget.child,
          )
        ],
      ),
    );
  }
}

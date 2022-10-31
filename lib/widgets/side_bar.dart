import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SideBar extends StatefulWidget {
  final double height;
  final double width;
  // final GlobalKey<NavigatorState> navigator;

  SideBar({
    Key? key,
    required this.height,
    required this.width,
    // required this.navigator
  }) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  List<Map> menu = [
    {'title': 'Activities', 'routeName': '/activities'},
    {'title': 'Hotels', 'routeName': '/hotels'},
    {'title': 'Flights', 'routeName': '/flights'},
    {'title': 'Restaurants', 'routeName': '/restaurants'},
  ];

  int sideBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width * 0.2,
      color: const Color(0xFF211955),
      child: Column(
        children: [
          SizedBox(
            height: widget.height * 0.05,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return RotatedBox(
                quarterTurns: 3,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      sideBarIndex = index;
                    });
                  },
                  child: Text(
                    menu[index]['title'],
                    style: TextStyle(
                      fontWeight: index == sideBarIndex ? FontWeight.bold : FontWeight.normal,
                      color:  index == sideBarIndex ? Colors.white : Colors.grey,
                      letterSpacing: 1
                    ),
                  ),
                ),
              );
            },
            itemCount: menu.length,
            physics: const NeverScrollableScrollPhysics(),
          )
        ],
      ),
    );
  }
}

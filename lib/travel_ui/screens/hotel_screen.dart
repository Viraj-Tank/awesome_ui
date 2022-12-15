import 'package:flutter/material.dart';

import '../widgets/CustomHeader.dart';

class HotelsScreen extends StatelessWidget {
  static const String routeName = '/hotels';

  const HotelsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF5EDDC),
        body: SingleChildScrollView(
          child: CustomHeader(title: 'Hotels'),
        ));
  }
}

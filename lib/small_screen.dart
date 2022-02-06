import 'package:flutter/material.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[200],
      child: const Center(child: Text("Small Screen")),
    );
  }
}

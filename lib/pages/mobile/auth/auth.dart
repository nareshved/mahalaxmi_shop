import 'package:flutter/material.dart';

class MobileAuthPage extends StatelessWidget {
  const MobileAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("mobile page called!!", style: TextStyle(color: Colors.red),),
      ),
    );
  }
}
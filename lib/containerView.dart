import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: SafeArea(
          child: Container(
            alignment: Alignment.centerRight,
            color: Colors.black,

            child: Container(
              height: 200,
              width: 200,
              child: const Text("I am Iron Man"),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                border: Border.all(color: Colors.blueAccent, width: 3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
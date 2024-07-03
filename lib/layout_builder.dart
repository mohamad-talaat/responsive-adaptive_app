import 'package:flutter/material.dart';
import 'package:responsive_app_rev/HomeScreen.dart';

class LayOutBuilderScreen extends StatelessWidget {
  const LayOutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // print(constraints.maxWidth.toString());
         if (constraints.maxWidth <= 550) {
            return const ResponsiveScreen();
          }
          if (constraints.maxWidth <= 1000) {
            return Text("data");
          } else {
            return DesktopScreen();
          }
        },
      ),
    );
  }
}

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ResponsiveScreen()),
        SizedBox(
          width: 20,
          height: 5,
        ),
        Expanded(child: Text("data")),
      ],
    );
  }
}

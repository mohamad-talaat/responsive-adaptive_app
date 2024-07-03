import 'package:flutter/material.dart';

class ResponsiveScreen extends StatefulWidget {
  const ResponsiveScreen({super.key});

  @override
  State<ResponsiveScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ResponsiveScreen> {
  @override
  Widget build(BuildContext context) {
    double hightQuery = MediaQuery.of(context).size.height;
    double widthQuery = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            height: hightQuery * 0.3,
            width: 500,
            child: const Text("Muhammad"),
          ),
          SizedBox(
            height: hightQuery * 0.006,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.yellow),
            height: hightQuery * 0.2,
            width: 500,
            child: const Text("ammar"),
          ),
          SizedBox(
            height: hightQuery * 0.006,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.green),
            height: hightQuery * 0.2,
            width: 500,
            child: const Text("mena"),
          ),
          SizedBox(
            height: hightQuery * 0.006,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            height: hightQuery * 0.2,
            width: 500,
            child: const Text("waleed"),
          ),
        ],
      ),
    );
  }
}

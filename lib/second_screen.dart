import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String username;
  final String bookingId;
  const SecondScreen({Key? key ,required this.username,required this.bookingId}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("${widget.username}"),
          Text("${widget.bookingId}"),

        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:lightmode/screens/conform_attendance.dart';
import 'package:lightmode/screens/diciplinary.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:SizedBox(
          height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Conform_Attendance()));
            },
                icon: Image.asset('assess/images/image 1571.png'))),

    );

  }
}

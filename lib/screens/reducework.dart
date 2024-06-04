import 'package:flutter/material.dart';
import 'package:lightmode/screens/login.dart';

class Reducework extends StatefulWidget {
  const Reducework({super.key});

  @override
  State<Reducework> createState() => _ReduceworkState();
}

class _ReduceworkState extends State<Reducework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
      Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assess/images/image 1574.png')),
    Positioned(
    bottom: 85,
    left:  45,
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
    fixedSize: const Size.fromHeight(60),
    maximumSize: Size.fromWidth(350)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const  Login(),));
      },
      child: const Text('Get Started'),

    ),

          ),
        ],
      ),
    );
  }
}

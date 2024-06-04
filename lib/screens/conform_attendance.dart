import 'package:flutter/material.dart';
import 'package:lightmode/screens/diciplinary.dart';

class Conform_Attendance extends StatefulWidget {
  const Conform_Attendance({super.key});

  @override
  State<Conform_Attendance> createState() => _Conform_AttendanceState();
}

class _Conform_AttendanceState extends State<Conform_Attendance> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            Center(
              child: Stack(
                children: [
                  SizedBox(
                      width:  MediaQuery.of(context).size.width - 4.0,
                      height: MediaQuery.of(context).size.height-5.0,
                      child:  Image.asset('assess/images/image 1560.png',fit:BoxFit.fill,)),

                  Positioned(
                    bottom: 148,
                    left:  30,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fixedSize: const Size.fromHeight(30),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 250,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Text(
                                        'Easy way to confirm',

                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 28),
                                      ),
                                      const Text(
                                        'your attendance',
                                        style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10,),
                                      const Text(
                                        'it is a long established fact that a reader ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const Text(
                                        'will be distracted by the readable content.',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const SizedBox(height: 10,),
                                      Container(
                                        width: MediaQuery.of(context).size.width - 4.0,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(15),
                                            color: Colors.blue),
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context, MaterialPageRoute(
                                                builder: (context) => Diciplinary()));
                                          },
                                          child: const Text('Next'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child:const Icon(Icons.arrow_forward,color: Colors.blueAccent,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    }
}


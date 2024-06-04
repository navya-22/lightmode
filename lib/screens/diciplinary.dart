import 'package:flutter/material.dart';
import 'package:lightmode/screens/reducework.dart';

class Diciplinary extends StatefulWidget {
  const  Diciplinary({super.key});

  @override
  State< Diciplinary> createState() => _DiciplinaryState();
}

class _DiciplinaryState extends State< Diciplinary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assess/images/image 1560 (1).png',
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 76,
                left:  175,
                child:
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: CircleBorder(),
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
                                    ' Disciplinary in ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 28),
                                  ),
                                  const Text(
                                    'your hand',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'it is a long established fact that a reader ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const Text(
                                    'will be distracted by the readable content.',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width - 5.0,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue),
                                    child: TextButton(
                                      onPressed: () {

                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>Reducework()
                                        ));
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
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ],
      ),
    ),);
  }
}

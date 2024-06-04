import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lightmode/screens/password.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter Verification Code',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '   We  have  sent  the  code  verification  to  your  mobile number',
              style: TextStyle(color: Colors.black45, fontSize: 18),
              textAlign: TextAlign.start,
            ),
            Image.asset(
              'assess/images/Screenshot (101).png',
              height: 500,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                otpContainer(),
                otpContainer(),
                otpContainer(),
                otpContainer(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '00:30 ', style: TextStyle(fontSize: 18),
                  //textAlign: TextAlign.right,
                ),
                Text(
                  'Resend it    ',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 18),
                ),
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(Size(400, 50)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.blueAccent)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Password(),
                      ));
                },
                child: Text(
                  'Verify',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }

  Container otpContainer() {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _rePasswordcontroller = TextEditingController();
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Enter New Password',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please enter your password',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
              Image.asset('assess/images/Screenshot (106).png'),
              Container(
                  width: 380,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '  Enter your password :',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '   Enter new Password',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        validator: (value) {
                          RegExp regex = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#/$*&~]).{8,}$');
                          if (value!.isEmpty) {
                            return 'Please enter the password';
                          } else {
                            if (!regex.hasMatch(value)) {
                              return 'Enter a valid password';
                            }
                          }
                          return null;
                        },
                        obscureText: !_passwordVisible,
                      ),
                    ],
                  )),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Re-Enter  your password :',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: _rePasswordcontroller,
                      decoration: InputDecoration(
                        hintText: '  Re-Enter Password',
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        RegExp regex2 = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&~]).{8,}$');
                        if (value!.isEmpty) {
                          return 'Please  re enter the password';
                        }
                        return null;
                      },
                      obscureText: !_passwordVisible,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent),
                      fixedSize: MaterialStatePropertyAll(Size(400, 60)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
                  onPressed: () {
                    showDialog(context: context,
                        builder:(context) => AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          title: Image.asset('assess/images/Screenshot (107).png'),
                          content: Container(
                            height: 180,
                            child: Column(
                              children: [
                                Text('Congratulations 🎉',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                      fontSize:20,fontWeight: FontWeight.bold ),),
                                Text('Your account is ready to use',style: TextStyle(fontSize: 18),),
                                SizedBox(height: 60,),
                                ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                                          fixedSize: MaterialStatePropertyAll(Size(300, 60)),
                                          backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
                                      child: Text('Back to Home',style: TextStyle(color: Colors.white),))

                              ],
                            ),
                          ),

                        ),);
                  },
                  child: Text(
                    'Update Password ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

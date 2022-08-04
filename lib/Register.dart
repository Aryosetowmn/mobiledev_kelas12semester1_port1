import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutterlogin/Login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final greenColor = Color.fromARGB(255, 1, 186, 118);
  final greyColor = Color.fromARGB(255, 232, 232, 232);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("login page"),
      //   backgroundColor: barColor,
      // ),
      body: Container(
        child: Column(
          children: [
            Container(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    icon: Icon(
                      // <-- Icon
                      Icons.arrow_back,
                      size: 24.0,
                    ),
                    label: Text('halo'))),
            Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 28),
                )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Text('Sign to continue',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 205, 205, 205))),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextField(
                    style: TextStyle(color: greenColor),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.black54),
                        labelText: 'Email',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: greenColor,
                        )))),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: TextField(
                    style: TextStyle(color: greenColor),
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock_outline_rounded,
                        color: greenColor,
                      ),
                    ))),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              width: double.infinity,
              child: Text(
                'Forgot Password?',
                textAlign: TextAlign.right,
                style: const TextStyle(color: Color.fromARGB(255, 1, 186, 118)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: ElevatedButton(
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: greenColor,
                      minimumSize: const Size.fromHeight(50),
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 20)),
                  onPressed: () {
                    onLogin();
                  }),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                width: double.infinity,
                child: RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: 'create a new account ',
                          style: TextStyle(color: greenColor)),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  onLogin() {}
}

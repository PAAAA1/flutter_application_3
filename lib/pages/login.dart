import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/pages/bottomnav.dart';
import 'package:flutter_application_3/pages/forgotmailpassword.dart';
import 'package:flutter_application_3/pages/signup.dart';
import 'package:flutter_application_3/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "", password = "";

  final _formkey= GlobalKey<FormState>();

  TextEditingController useremailcontroller = new TextEditingController();
  TextEditingController userpasswordcontroller = new TextEditingController();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            content: Text(
          "No user found for that Email",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ))));
      }else if(e.code=='Wrong-password'){
        ScaffoldMessenger.of(context).showSnackBar((SnackBar(
            content: Text(
          "Wrong Password Provide by user",
          style: TextStyle(fontSize: 20.0, color: Colors.black),
        ))));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ])),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: const Text(""),
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 60.0, left: 20.0, right: 20.0),
                    //Company Logo Image
                    child: Center(
                        child: Image.asset(
                      "",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ))),
                //is use another method of the image url
                //CachedNetworkImage(imageUrl: imageUrl),
                const SizedBox(
                  height: 50.0,
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    width: MediaQuery.of(context).size.width,
                    //Log in Box all cover Box
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Login",
                            style: AppWidget.HeadlineTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            controller: useremailcontroller,
                            validator: (value){
                              if(value==null|| value.isEmpty){
                                return 'Pleace Enter Password';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: AppWidget.semiBooldTextFeildStyle(),
                                prefixIcon: const Icon(Icons.email_outlined)),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(
                            controller: userpasswordcontroller,
                            validator: (value){
                              if(value==null|| value.isEmpty){
                                return 'Pleace Enter Password';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: AppWidget.semiBooldTextFeildStyle(),
                                prefixIcon: const Icon(Icons.password_outlined)),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ForgotMailPassword()));
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: AppWidget.semiBooldTextFeildStyle(),
                                  ))),
                          const SizedBox(
                            height: 60.0,
                          ),
                          InkWell(
                            onTap: () {
                              if(_formkey.currentState!.validate()){
                                setState(() {
                                  email= useremailcontroller.text;
                                  password= userpasswordcontroller.text;
                                });
                              }
                              userLogin();
                            },
                            child: Material(
                              elevation: 5.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: const Color(0Xffff5722),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => BottomNav()));
                                  },
                                  child: const Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Don't have an account? Sing up",
                      style: AppWidget.semiBooldTextFeildStyle(),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

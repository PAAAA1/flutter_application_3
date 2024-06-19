import 'package:flutter/material.dart';

class AppWidget{

  static TextStyle boldTextFeildStyle(){
  return const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold);
}

static TextStyle HeadlineTextFeildStyle(){
  return const TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold);
}

static TextStyle LightTextFeildStyle(){
  return const TextStyle(
                  color: Colors.black38,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500);
}

static TextStyle semiBooldTextFeildStyle(){
  return const TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500);
}
}
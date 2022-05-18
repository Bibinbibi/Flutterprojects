import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Firstpage.dart';
import 'Secondpage.dart';

void main() {
  runApp(MaterialApp(
    home: First(),
    routes: {
      "Second":(context)=>Second(),
    },
  ));
}

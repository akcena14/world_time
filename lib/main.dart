import 'package:flutter/material.dart';
import 'package:world_time/timeApp/home.dart';
import 'package:world_time/timeApp/change_location.dart';
import 'package:world_time/timeApp/loading_screen.dart';

void main() =>runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChangeLocation(),
  },
));


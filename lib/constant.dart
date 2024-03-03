import 'dart:math';
import 'package:flutter/material.dart';

getRandomColor() => [
      Colors.blueAccent,
      Colors.redAccent,
      Colors.greenAccent,
    ][Random().nextInt(3)];

const backgroundColor = Colors.black;
const borderColor = Colors.grey;
var buttonColor = Colors.red[400];

const pageindex = [

  'Home',
  'Search',
  'Uplaod Videos',
  'Messages',
  'Profile'

];


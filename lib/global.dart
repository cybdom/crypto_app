import 'package:flutter/material.dart';

enum actions { add, receive }

Color darkBlue = Color(0xff071d40);
Color lightBlue = Color(0xff1b4dff);

String username = "Cybdom Tech";

List<Map<String, dynamic>> historyContainerList = [
  {
    'title': 'Launch a transaction',
    'subtitle': '3811 Launches',
    'actionType': actions.add,
    'usersImg': [
      'https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg',
      'https://cdn.pixabay.com/photo/2015/01/08/18/30/entrepreneur-593371_960_720.jpg',
    ],
  },
  {
    'title': 'Launch a transaction',
    'subtitle': '3811 Launches',
    'actionType': actions.receive,
    'usersImg': [
      'https://cdn.pixabay.com/photo/2015/09/18/11/46/man-945482_960_720.jpg',
      'https://cdn.pixabay.com/photo/2014/07/31/23/49/guitarist-407212_960_720.jpg',
      'https://cdn.pixabay.com/photo/2016/09/24/03/20/passion-1690965_960_720.jpg',
    ],
  }
];

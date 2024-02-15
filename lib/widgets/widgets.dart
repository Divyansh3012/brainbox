import 'package:flutter/material.dart';

Widget appBar(BuildContext context){
  return Container(
    child: Center(
        child : RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 22),
            children: const <TextSpan>[
              TextSpan(text: 'Brain', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black)),
              TextSpan(text: 'Box', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
            ],
          ),
        )
    ),
  );
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 25,
        child: Icon(Icons.person), 
        
      ),
      title: Text(
        'semikolan',
        textScaleFactor: 1.5,
      ), 
      subtitle: 
      Row(children: [
      const Icon(Icons.done_all),
       SizedBox(width: 3,),
      Text('hii semikolan',
            style: const  TextStyle(
            fontSize: 15),),
      ],)
      ,
      trailing: Text('18:04'),
      // selected: true,
    );
  }
}

 
import 'package:flutter/material.dart';

void main(List<String> args) {
 runApp(AppMyCard());  
}

class AppMyCard extends StatelessWidget {
  const AppMyCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget> [
                CircleAvatar(
                  radius: 50.0,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue.shade100,
                  child: const Text('J',
                  style: TextStyle(fontSize: 40.0),
                  ),
                ),
                const CreateText(text: 'Jeremias Pinheiro'),
                const CreateText(text: 'JAVA DEVELOPER')
                ,
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color:Colors.teal.shade100
                    ),
                )
              ],),
          ) ,),
      ),
    );
  }
}

class CreateText extends StatelessWidget {
  final String text;
 const CreateText({ Key? key ,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontFamily: 'OpenSans'
                )
              );
  }
}
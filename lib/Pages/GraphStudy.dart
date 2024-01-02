import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphStudyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graph Study',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/graphstudy.png',
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Graph Study ',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
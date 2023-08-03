import 'package:flutter/material.dart';


class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('This is counter: $count',style:const TextStyle(color: Colors.white,fontSize: 35)),),
      floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            count++;
          });
      },
      child: Icon(Icons.add),
      )
    );
  }
}
import 'package:flutter/material.dart';

class FloatActionDemo extends StatefulWidget {
  const FloatActionDemo({Key? key}) : super(key: key);

  @override
  State<FloatActionDemo> createState() => _FloatActionDemo();
}

class _FloatActionDemo extends State<FloatActionDemo> {
  int count = 0;
  String $title = "FloatingAction Button";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text($title),
      ),
      body: Center(
        child: Text("You have pressed the button $count time."),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          count = count + 1;
          print("$count");
        }),
        tooltip: 'เพิ่มค่า',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(height: 50.0,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked
    );
  }
}

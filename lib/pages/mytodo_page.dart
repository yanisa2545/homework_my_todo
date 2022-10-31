import 'package:flutter/material.dart';
var myTodoList = [
  'ทำการบ้านครั้งที่ 4 วิชา Mobile App Dev',
  'ทำการบ้านครั้งที่ 5 วิชา Mobile App Dev',
  'ทำโปรเจ็ควิชา Mobile App Dev'
];
class MytoDo extends StatefulWidget {
  const MytoDo({Key? key}) : super(key: key);
  @override
  _MytoDoState createState() => _MytoDoState();
}
class _MytoDoState extends State<MytoDo> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My ToDo')),
      body: ListView.builder(itemBuilder: (BuildContext context,i) {
        var mylist = myTodoList[i];
        return Card(
          child:  InkWell(
            onTap: () {
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(mylist),
            ),
          ),
        );
      }, itemCount: myTodoList.length),
    );
  }
}

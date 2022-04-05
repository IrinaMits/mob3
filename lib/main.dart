import 'dart:math';
import 'package:flutter/material.dart';

class MyBody extends StatefulWidget {
  const MyBody({Key? key}) : super(key: key);

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      Divider();
      return Text('2 ^ $index = ${pow(2, index).toStringAsFixed(0)}');
    });
  }
}

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Лабораторная 4 Мицкевич',
    theme: ThemeData(primarySwatch: Colors.pink),
    home: new Scaffold(
        appBar: AppBar(
          title: const Text('Список элементов'),
        ),
        body: new Center(
          child: new MyBody(),
        ))));

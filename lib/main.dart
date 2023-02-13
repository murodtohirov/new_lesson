import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<Widget> list = [];
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 100; i++) {
      list.add(Container(
        margin: EdgeInsets.all(5),
        color: Colors.orange,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.phone_android,
              color: Colors.blue,
            ),
            Text('$i')
          ],
        ),
      ));
    }

    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: ListView(
        children: list,
      ),
    );
  }
}

void main() {
  runApp(MyWidget());
}

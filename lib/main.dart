import 'package:flutter/material.dart';

class Mycode extends StatefulWidget {
  const Mycode({super.key});

  @override
  State<Mycode> createState() => _MycodeState();
}

class _MycodeState extends State<Mycode> {
  @override
  List<Widget> ls = [];
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          TextField(
            
            onEditingComplete: () {
              print('hi');
            },
            onSubmitted: (v) {
             print( 'hello');
            },
            controller: controller,
            decoration: InputDecoration(
                suffix: IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                ls.add(ListTile(title: Text(controller.text)));
                setState(() {
                  controller.text = '';
                });
              },
            )),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: ls.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: ls[index],
              );
            },
          ))
        ],
      )),
    );
  }
}

void main() {
  runApp(Mycode());
}

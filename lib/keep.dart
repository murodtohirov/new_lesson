import 'package:flutter/material.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  List<String> Commanda = [
    'Real madrid',
    'Barselona',
    'Atletiko madrid',
    'Real Betis',
    'Valensiya',
    'Sevilya'
  ];
  List<Widget> func() {
    List<Widget> nimadur = [];

    for (int i = 0; i < Commanda.length; i++) {
      nimadur.add(
        ListTile(
            title: Text(Commanda[i]),
            trailing: TextButton(
                onPressed: () {
                  setState(() {
                    Commanda.removeAt(i);
                  });
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                ))),
      );
    }
    return nimadur;
  }

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          TextField(
            controller: _controller,
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              setState(() {
                Commanda.add(_controller.text);
                _controller.text = '';
              });
            },
            child: const Text('buttom'),
          ),
          SizedBox(height: 15),
          Expanded(
              child: ListView(
            children: func(),
          ))
        ],
      )),
    );
  }
}

void main() {
  runApp(Call());
}

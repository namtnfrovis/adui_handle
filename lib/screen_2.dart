import 'package:flutter/material.dart';
import 'package:sdui_handle/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final String router = '/screen2';

  List<Map<String, dynamic>> serverUI = [
    {'type': 'SizedBox', 'height': 20.0},
    {'type': 'FlutterLogo', 'size': 80.0},
    {'type': 'SizedBox', 'size': 30.0},
    {'type': 'TextFormField', 'labelText': 'Email', 'obscure': false},
    {'type': 'TextFormField', 'labelText': 'Password', 'obscure': true},
    {
      'type': 'TextButton',
      'hint': 'Login',
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> sduiWidgets = [];

    serverUI.forEach(
      (element) {
        String type = element['type'];
        switch (type) {
          case 'SizedBox':
            sduiWidgets.add(SizedBox(height: element['height']));
            break;

          case 'FlutterLogo':
            sduiWidgets.add(FlutterLogo(size: element['size']));
            break;
          case 'TextFormField':
            sduiWidgets.add(Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: element['labelText'],
                  border: const OutlineInputBorder(),
                ),
                obscureText: element['obscure'],
              ),
            ));
            break;
          case 'TextButton':
            sduiWidgets.add(Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.amber,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const Screen3();
                      },
                    ));
                  },
                  child: Text(element['hint']),
                ),
              ),
            ));
            break;
        }
      },
    );
    return Scaffold(
      body: Column(
        children: [...sduiWidgets],
      ),
    );
  }
}

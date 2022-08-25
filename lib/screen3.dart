import 'package:flutter/material.dart';
import 'package:sdui/sdui.dart';
import 'package:sdui_handle/my_widget.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  void initState() {
    super.initState();
    SDUIWidgetRegistry.getInstance().register('MyWidget', () => MyWidget());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mafia Internet",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Click action");
              },
              icon: const Icon(Icons.phone)),
        ],
      ),
      body: body(context),
    );
  }

  Widget body(BuildContext context) {
    return DynamicRoute(provider: StaticRouteContentProvider(homeJson));
  }
}

var homeJson = '''
{
  "type": "Screen",
  "child": {
    "type": "Form",
    "children": [
      {
        "type": "MyWidget",
        "attributes": {
          "caption": "Welcome to mafia internet",
          "padding": 5.0,
          "margin": 5.0
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 200.0,
          "height": 200.0,
          "fit" : "none"
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "first_name",
          "name": "first_name",
          "value": "Mafia",
          "caption": "First Name",
          "maxLength": 30,
          "minLength": 5
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "last_name",
          "name": "last_name",
          "value": "Internet",
          "caption": "Last Name",
          "maxLength": 30
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "email",
          "name": "email",
          "value": "ray.sponsible@gmail.com",
          "caption": "Email *",
          "required": true,
          "type": "Email"
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "website",
          "name": "website",
          "caption": "Website",
          "type": "Url"
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "phone",
          "name": "phone",
          "type": "phone",
          "caption": "Phone",
          "required": true,
          "initialCountry": "CM",
          "value": "+237690000001"
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "date",
          "type": "date",
          "name": "birth_date",
          "caption": "Date of Birth"
        }
      },
      {
        "type": "Input",
        "attributes": {
          "id": "submit",
          "type": "Submit",
          "name": "submit",
          "caption": "Create Profile"
        },
        "action": {
          "type": "Command",
          "url": "https://myapp.herokuapp.com/commands/save-profile",
          "trackEvent": "create-event",
          "prompt": {
            "type": "Dialog",
            "attributes": {
              "type": "confirm",
              "title": "Confirmation",
              "message": "Are you sure you want to change your profile?"
            }
          }
        }
      }
    ]
  },
  "attributes":{
    "id": "page.home"
  }
}
''';

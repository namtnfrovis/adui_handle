import 'package:flutter/material.dart';
import 'package:sdui/sdui.dart';

// import 'my_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Register 3rd party widgets
  // SDUIWidgetRegistry.getInstance().register('MyWidget', () => MyWidget());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo',
      // initialRoute: '/',
      // routes: _routes(),
      debugShowCheckedModeBanner: false,
      // navigatorObservers: [sduiRouteObserver],
      home: Home(),
    );
  }

// Map<String, WidgetBuilder> _routes() => {
//       '/': (context) => const Home(),
//       '/static': (context) =>
//           DynamicRoute(provider: StaticRouteContentProvider(staticJson)),
//       '/remote': (context) => const DynamicRoute(
//           provider: HttpRouteContentProvider(
//               'http://10.0.2.2:8080/onboard' /* Remove endpoint - Replace it with your own */
//               )),
//     };
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xin la xin vinh biet cu"),
        actions: [
          IconButton(
              onPressed: () {
                (context) => DynamicRoute(
                    provider: StaticRouteContentProvider(staticJson));
              },
              icon: const Icon(Icons.paid_rounded))
        ],
      ),
      body: DynamicRoute(provider: StaticRouteContentProvider(homeJson)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.title), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Label"),
          BottomNavigationBarItem(icon: Icon(Icons.token), label: "Fake"),
        ],
      ),
    );
  }
}

var homeJson = '''
{
    "type": "Center",
    "children": [
      {
        "type": "Text",
        "attributes": {
          "caption": "Sample Project",
          "padding": 5.0,
          "margin": 5.0
        }
      }
    ]
  }
''';
var staticJson = '''
{
  "type": "Screen",
  "appBar": {
    "type": "AppBar",
    "attributes": {
      "title": "Profile"
    }
  },
  "bottomNavigationBar": {
    "type": "BottomNavigationBar",
    "attributes":{
      "background": "#1D7EDF",
      "selectedItemColor": "#ffffff",
      "unselectedItemColor": "#ffffff"
    },
    "children":[
      {
        "type": "BottomNavigationBarItem",
        "attributes": {
          "icon": "f107",
          "caption": "Home"
        },
        "action":{
          "type": "Route",
          "url": "route:/~"
        }
      },
      {
        "type": "BottomNavigationBarItem",
        "attributes": {
          "icon": "f27b",
          "caption": "Me"
        },
        "action":{
          "type": "Route",
          "url": "route:/static"
        }
      },
      {
        "type": "BottomNavigationBarItem",
        "attributes": {
          "icon": "e211",
          "caption": "Remote"
        },
        "action":{
          "type": "Route",
          "url": "route:/remote"
        }
      }
    ]
  },
  "child": {
    "type": "Form",
    "attributes": {
      "id": "form",
      "padding": 10
    },
    "children": [
      {
        "type": "Input",
        "attributes": {
          "id": "first_name",
          "name": "first_name",
          "value": "Ray",
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
          "value": "Sponsible",
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
    "id": "page.static"
  }
}
''';

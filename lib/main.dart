import 'package:flutter/material.dart';
import 'package:sdui/sdui.dart';
import 'package:sdui_handle/screen_2.dart';

import 'my_widget.dart';

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
      // routes: routes(),
      debugShowCheckedModeBanner: false,
      // navigatorObservers: [sduiRouteObserver],
      home: Home(),
    );
  }
// Map<String, WidgetBuilder> routes() =>
//     {
//       '/': (context) =>
//           DynamicRoute(provider: StaticRouteContentProvider(homeJson)),
//       '/static': (context) =>
//           DynamicRoute(provider: StaticRouteContentProvider(staticJson)),
//       '/remote': (context) =>
//       const DynamicRoute(
//           provider: HttpRouteContentProvider(
//               'http://10.0.2.2:8080/onboard' /* Remove endpoint - Replace it with your own */
//           )),
//     };
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    DynamicRoute(provider: StaticRouteContentProvider(homeJson)),
    Center(
        child: DynamicRoute(provider: StaticRouteContentProvider(staticJson))),
    const Screen2()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Xin la xin vinh biet cu"),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.title), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Label"),
          BottomNavigationBarItem(icon: Icon(Icons.token), label: "Fake"),
        ],
      ),
    );
  }
}

// "action":{
//     "type": "Route",
//     "url": "route:/screen2"
//
//   }
var homeJson = '''
{
"type": "Column",
"children":[
{
   "type": "Text",
        "attributes": {
          "caption": "Sample Project",
          "padding": 5.0,
          "margin": 5.0
        }
      },
      {
      "type": "row",
      "children": [
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
      "type": "spacer"
      },
        {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 200.0,
          "height": 200.0,
          "fit" : "none"
        }
      }
      ]
      },
      {
      "type": "expanded",
      "child": {
      "type": "gridview",
      "crossAxisSpacing": 3,
      "mainAxisSpacing": 3,
      "crossAxisCount": 3,
      "padding": 0.0,
      "primary": false,
      "children": [
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
       {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 100.0,
          "height": 100.0,
          "fit" : "none"
        }
      }
      ]
      }
      },
      
      
            {
      "type": "expanded",
      "child": {
      "type": "listview",
      "direction": "vertical",
      "separator": true,
      "children": [
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
            {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
            {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },{
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },{
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },{
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },{
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },
      {
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },{
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      },{
        "type": "Image",
        "attributes": {
          "url" : "https://play-lh.googleusercontent.com/DTzWtkxfnKwFO3ruybY1SKjJQnLYeuK3KmQmwV5OQ3dULr5iXxeEtzBLceultrKTIUTr",
          "width" : 500.0,
          "height": 100.0,
          "fit" : "none"
        }
      }
      
      
      
      
      
      
      
      ]
      }
      }
]
}
''';
var staticJson = '''
{
  "type": "Screen",
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
    "id": "page.static"
  }
}
''';

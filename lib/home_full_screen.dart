import 'package:flutter/material.dart';
import 'package:sdui/sdui.dart';
import 'package:sdui_handle/my_widget.dart';

class HomeFullScreen extends StatefulWidget {
  const HomeFullScreen({Key? key}) : super(key: key);

  @override
  State<HomeFullScreen> createState() => _HomeFullScreenState();
}

class _HomeFullScreenState extends State<HomeFullScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SDUIWidgetRegistry.getInstance().register('MyWidget', () => MyWidget());
  }

  @override
  Widget build(BuildContext context) {
    return DynamicRoute(provider: StaticRouteContentProvider(homeJsonFull));
  }
}

var homeJsonFull = '''
{
  "type": "Screen",
  "appBar": {
    "type": "AppBar",
    "attributes": {
      "title": "Home",
      "actions":[
        {
          "type": "Container",
          "attributes": {
            "padding": 10.0
          },
          "children":[
            {
              "type": "Icon",
              "attributes":{
                "code": "f27b"
              }
            }
          ],
          "action":{
            "type": "Route",
            "url": "route:/static",
            "trackEvent": "event01"
          }
        }
      ]
    }
  },
  "child": {
    "type": "Center",
    "children": [
      {
        "type": "MyWidget",
        "attributes": {
          "caption": "Sample Project",
          "padding": 5.0,
          "margin": 5.0
        }
      }
    ]
  },
  "attributes":{
    "id": "page.home"
  }
}
''';

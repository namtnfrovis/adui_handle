import 'package:flutter/material.dart';
import 'package:sdui/sdui.dart';
import 'package:sdui_handle/my_widget.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
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
    return DynamicRoute(provider: StaticRouteContentProvider(imageJson));
  }
}

var imageJson = '''
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

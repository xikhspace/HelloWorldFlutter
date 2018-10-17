import 'package:flutter/material.dart';
import 'dart:ui';

class DetailActivityWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DetailActivityState();
  }
}

class androi3d extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    // TOOD: change background 
    var paint = Paint();
    // TODO: Attributes may be redundant
    canvas.drawRect(rect, paint);
  }
  
  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (Size size) {
      
      var rect = Offset.zero & size;
      var width = size.width;
      // TODO : Draw Object
      // rect = buildObject();
      return [
        CustomPainterSemantics(
          rect: rect,
          properties: SemanticsProperties(
            label: 'androi3d',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
  }
    
  @override
  bool shouldRepaint(Sky oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}

class DetailActivityState extends State<DetailActivityWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Im other Screen"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text('Mail')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

import 'loginpagenew.dart';


void main() => runApp(MaterialApp(home: Example()));

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Progress Indicator Examples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              child: Text("Circular"),
              //color: Colors.grey[300],
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCircularProgressIndicatorPage(),
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Linear"),
              //color: Colors.grey[300],
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidLinearProgressIndicatorPage(),
                ),
              ),
            ),
            ElevatedButton(
              child: Text("Custom"),
              //color: Colors.grey[300],
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => loginnew(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LiquidCircularProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidCircularProgressIndicator(
        value: 0.25,
        // Defaults to 0.5.
        valueColor: AlwaysStoppedAnimation(Colors.pink),
        // Defaults to the current Theme's accentColor.
        backgroundColor: Colors.white,
        // Defaults to the current Theme's backgroundColor.
        borderColor: Colors.red,
        borderWidth: 5.0,
        direction: Axis.horizontal,
        // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
        center: Text("Loading..."),
      ),
    );
  }
}



class LiquidLinearProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidLinearProgressIndicator(
        value: 0.25, // Defaults to 0.5.
        valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
        backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
        borderColor: Colors.red,
        borderWidth: 5.0,
        borderRadius: 12.0,
        direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
        center: Text("Loading..."),
      )
    );
  }
}


// class LiquidCustomProgressIndicatorPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: LiquidCustomProgressIndicator(
//             value: 0.2 ,// Defaults to 0.5.
//             //valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
//       backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
//       direction: Axis.vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right).
//       shapePath: _buildBoatPath(), // A Path object used to draw the shape of the progress indicator. The size of the progress indicator is created from the bounds of this path.
//     )
//     );
//   }
// }
//
// class _buildBoatPath extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

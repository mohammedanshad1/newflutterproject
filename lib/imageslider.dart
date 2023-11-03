import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_slider/widget_slider.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = SliderController(
    duration: const Duration(milliseconds: 600),
  );

  final images = const [
    'assets/icons/bedroom-2631746.jpg',
    'assets/icons/483251 (1).jpg',
    'assets/icons/colourblind-kevin-NtzHyyixxmo-unsplash.jpg',
    'assets/icons/483251 (1).jpg',
    'assets/icons/483251 (1).jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WidgetSlider(
          fixedSize: 100,
          controller: controller,
          itemCount: images.length,
          itemBuilder: (context, index, activeIndex) {
            return CupertinoButton(
              onPressed: () async => await controller.moveTo?.call(index),
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(images[index]),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.yellow,
                      offset: const Offset(0, 8),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.yellow,
                      offset: const Offset(0, 8),
                      spreadRadius: 5,
                      blurRadius: 10,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularProgressIndicator(
                    backgroundColor: Colors.red,
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    strokeWidth: 10,
                  ),
                  GFLoader(
                      type:GFLoaderType.square,
                  loaderstrokeWidth: 300,
                  ),
                  LoadingAnimationWidget.staggeredDotsWave(
                    color: Colors.red,
                    size: 50,
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoadingAnimationWidget.dotsTriangle(
                      color: Colors.black,
                      size: 50
                  ),
                  LoadingAnimationWidget.halfTriangleDot(
                    color: Colors.red,
                    size: 50
                  ),
                  LoadingAnimationWidget.twistingDots(
                      leftDotColor: Colors.yellow,
                      rightDotColor: Colors.blue,
                      size: 50
                  )
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoadingAnimationWidget.inkDrop(
                      color: Colors.green,
                      size: 50
                  ),
                  LoadingAnimationWidget.fourRotatingDots(
                      color: Colors.yellow,
                      size: 50
                  ),
                  LoadingAnimationWidget.waveDots(
                      color: Colors.red,
                      size: 50
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoadingAnimationWidget.beat(
                      color: Colors.black,
                      size: 50
                  ),
                  LoadingAnimationWidget.discreteCircle(
                      color: Colors.red,
                      size: 50
                  ),
                  LoadingAnimationWidget.newtonCradle(
                      color: Colors.greenAccent,
                      size: 100
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}



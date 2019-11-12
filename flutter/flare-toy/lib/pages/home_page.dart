import 'package:flare_dart/math/mat2d.dart';
import 'package:flare_flutter/flare.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with FlareController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: FlareActor('assets/Penguin.flr',
                alignment: Alignment.center,
                isPaused: false,
                fit: BoxFit.cover,
                animation: 'walk',
                controller: this),
          ),
        ],
      ),
    );
  }

  @override
  void initialize(FlutterActorArtboard artboard) {
    // Do nothing.
  }

  @override
  bool advance(FlutterActorArtboard artboard, double elapsed) {
    return false;
  }

  @override
  void setViewTransform(Mat2D viewTransform) {
    // Do nothing.
  }
}

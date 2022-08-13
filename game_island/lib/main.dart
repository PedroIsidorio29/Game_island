import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyGame());
}

class MyGame extends StatelessWidget {
  const MyGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Island',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black26),
      home: const GameInit(),
    );
  }
}

class GameInit extends StatelessWidget {
  const GameInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      map: TiledWorldMap("map/map.json"),
      showCollisionArea: true,
    );
  }
}

import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:game_island/jogador.dart';

void main() {
  runApp(const MyGame());
}

const double size = 16;

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
      player: Jogador(
        Vector2(3 * size, 4 * size),
      ),
      cameraConfig: CameraConfig(moveOnlyMapArea: true, zoom: 2.5),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
      ),
    );
  }
}

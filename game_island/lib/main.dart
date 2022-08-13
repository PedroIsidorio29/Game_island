import 'package:bonfire/bonfire.dart';
import 'package:bonfire/tiled/model/tiled_object_properties.dart';
import 'package:flutter/material.dart';
import 'package:game_island/jogador.dart';
import 'package:game_island/slime.dart';

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
      map: TiledWorldMap("map/map.json",objectsBuilder: {
        'slime':(properties)=>Slime(properties.position)
      }),
      player: Jogador(
        Vector2(3 * size, 4 * size),
      ),
      cameraConfig: CameraConfig(moveOnlyMapArea: true, zoom: 2.5),
      joystick: Joystick(
        directional: JoystickDirectional(),
        keyboardConfig: KeyboardConfig(
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
      ),components: [],
    );
  }
}

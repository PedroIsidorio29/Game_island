// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:game_island/entities/player/jogador.dart';

class Interface extends StatefulWidget {
  static const overKey = "interface";
  final Jogador player;
  const Interface({required this.player});

  @override
  State<Interface> createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  late Timer _timer;
  int coins = 0;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
      if (coins != widget.player.pontuacao) {
        print('init');
        setState(() {
          coins = widget.player.pontuacao;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Text(
        "Score: $coins",
        style: const TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}

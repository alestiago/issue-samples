import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/experimental.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return GameWidget.controlled(gameFactory: () => _MyGame());
  }
}

class _MyGame extends FlameGame with HasKeyboardHandlerComponents {
  _MyGame()
      : super(
          camera: CameraComponent(
            viewfinder: Viewfinder(),
          ),
        );

  @override
  Color backgroundColor() {
    return Colors.black;
  }

  final _topLeftBound = Vector2.zero();

  final _bottomLeftBound = Vector2(1500, 2000);

  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    final border = RectangleComponent.fromRect(
      Rect.fromLTRB(
        _topLeftBound.x,
        _topLeftBound.y,
        _bottomLeftBound.x,
        _bottomLeftBound.y,
      ),
      paint: Paint()
        ..color = const Color(0xFFFF0000)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5.0,
    );
    await world.add(border);

    final bounds = Rectangle.fromPoints(_topLeftBound, _bottomLeftBound);
    camera.setBounds(bounds);

    final player = _Player()
      ..position = Vector2(_bottomLeftBound.x / 2, _bottomLeftBound.y / 2);
    await world.add(player);
    camera.follow(player);
  }
}

class _Player extends PositionComponent with KeyboardHandler {
  @override
  FutureOr<void> onLoad() async {
    await super.onLoad();

    add(
      RectangleComponent.square(
        size: 50,
        paint: Paint()..color = const Color(0xFFFFFFFF),
      ),
    );
  }

  @override
  bool onKeyEvent(KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    const leftKey = LogicalKeyboardKey.keyA;
    const rightKey = LogicalKeyboardKey.keyD;
    const downKey = LogicalKeyboardKey.keyS;
    const upKey = LogicalKeyboardKey.keyW;

    final isMovementKey = event.logicalKey == leftKey ||
        event.logicalKey == rightKey ||
        event.logicalKey == downKey ||
        event.logicalKey == upKey;
    if (!isMovementKey) {
      return super.onKeyEvent(event, keysPressed);
    }

    const movement = 50.0;

    if (event is KeyDownEvent) {
      if (event.logicalKey == leftKey) {
        position += Vector2(-movement, 0);
      } else if (event.logicalKey == rightKey) {
        position += Vector2(movement, 0);
      } else if (event.logicalKey == downKey) {
        position += Vector2(0, movement);
      } else if (event.logicalKey == upKey) {
        position += Vector2(0, -movement);
      }
    }

    return super.onKeyEvent(event, keysPressed);
  }
}

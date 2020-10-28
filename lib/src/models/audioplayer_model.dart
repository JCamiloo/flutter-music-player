import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {

  bool _playing = false;
  AnimationController _controller;

  set controller(AnimationController value) {
    this._controller = value;
  }

  AnimationController get controller => this._controller;

}
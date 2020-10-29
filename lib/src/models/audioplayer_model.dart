import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {

  bool _playing = false;
  AnimationController _controller;
  Duration _songDuration = Duration(milliseconds: 0);
  Duration _currentDuration = Duration(milliseconds: 0);

  set playing(bool value) {
    this._playing = value;
    notifyListeners();
  }

  bool get playing => this._playing;

  set controller(AnimationController value) {
    this._controller = value;
  }

  AnimationController get controller => this._controller;

  set songDuration(Duration value) {
    this._songDuration = value;
    notifyListeners();
  }

  Duration get songDuration => this._songDuration;
  
  set currentDuration(Duration value) {
    this._currentDuration = value;
    notifyListeners();
  }

  Duration get currentDuration => this._currentDuration;

  String get songTotalDuration => this.printDuration(this._songDuration);

  String get currentSecond => this.printDuration(this._currentDuration);

  double get percentage => (this._songDuration.inSeconds > 0)
                           ? this._currentDuration.inSeconds / this._songDuration.inSeconds
                           : 0;

  String printDuration(Duration duration) {

    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));

    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
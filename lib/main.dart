import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:music_player/src/screens/music_player_screen.dart';
import 'package:music_player/src/theme/theme.dart';
import 'package:music_player/src/models/audioplayer_model.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AudioPlayerModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        theme: customTheme,
        home: Scaffold(
          body: MusicPlayerScreen()
        )
      ),
    );
  }
}
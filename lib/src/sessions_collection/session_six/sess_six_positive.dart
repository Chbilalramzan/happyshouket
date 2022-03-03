import 'package:flutter/material.dart';
import 'package:happy_shouket/src/screens/intervention_rating.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:happy_shouket/src/screens/video_items.dart';

class SessionSixPosPsycho extends StatelessWidget {
  static const String routeName = 'session6_positive_screen';

  @override
  Widget build(BuildContext context) {
    ChewieController _chewieController;
    return Scaffold(
      appBar: AppBar(
        title: Text('POSITIVE PSYCHOLOGY SESSION SIX'),
        actions: [
          TextButton(
            onPressed: () =>
                //sign out
                Navigator.pushNamed(context, EduRatingScreen.routeName),
            child: Text(
              'Next',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController:
                VideoPlayerController.asset('assets/session6/integration.mp4'),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
                'assets/session6/advantages_of_working.mp4'),
            looping: true,
            autoplay: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
                'assets/session6/positive_legacy.mp4'),
            looping: true,
            autoplay: true,
          ),
          TextButton(
            onPressed: () {
              _chewieController.enterFullScreen();
            },
            child: Text(
              'Fullscreen',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
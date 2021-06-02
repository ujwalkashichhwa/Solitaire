import 'package:flutter/material.dart';
import './chewie_list_item.dart';
import 'package:video_player/video_player.dart';

class HowToPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            backgroundColor: Colors.green[800],
            body: Container(
              margin: EdgeInsets.only(top: 40, left: 2),
              child: ListView(
                padding: EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                      height: 50,
                      color: Colors.green[600],
                      child: Center(
                        child: Text("Put 'A' Ace cards in Suit Piles"),
                      )),
                  ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.asset("assets/videos/1.mp4"),
                    looping: false,
                  ),
                  Container(
                      height: 50,
                      color: Colors.green[500],
                      child: Center(
                        child: Text("overlap cards with different colors"),
                      )),
                  ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.asset('videos/2.mp4'),
                    looping: false,
                  ),
                  Container(
                      height: 50,
                      color: Colors.green,
                      child: Center(
                        child: Text("Search required cards from deck"),
                      )),
                  ChewieListItem(
                    videoPlayerController:
                        VideoPlayerController.asset('videos/3.mp4'),
                    looping: false,
                  ),
                ],
              ),
            )),
        onWillPop: () {
          return showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    backgroundColor: Colors.green[200],
                    title: Text('Warning'),
                    content: Text("Are you sure to exit?"),
                    actions: <Widget>[
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop(true);
                          },
                          child: Text(
                            "Yes",
                            style: TextStyle(color: Colors.black),
                          )),
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                          child: Text(
                            "No",
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ));
        });
  }
}

import 'package:Solitaire_remake/game_screen.dart';
import 'package:Solitaire_remake/how_to_play.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  //function to navigate towards new game screen
  void selectcategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return GameScreen();
    }));
  }

  //function to navigate towards how to play
  void selecthowtoplay(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return HowToPlay();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/back.png'), fit: BoxFit.cover)),
        child: Container(
          margin: const EdgeInsets.only(top: 200),
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              InkWell(
                onTap: () => selectcategory(context),
                splashColor: Theme.of(context).primaryColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[800].withOpacity(0.7),
                  ),
                  margin: const EdgeInsets.all(8),
                  height: 50,
                  child: const Center(
                    child: Text(
                      'START GAME',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => selecthowtoplay(context),
                splashColor: Theme.of(context).primaryColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[800].withOpacity(0.7),
                  ),
                  margin: const EdgeInsets.all(8),
                  height: 50,
                  child: const Center(
                    child: Text(
                      'HOW TO PLAY?',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flash_chat/big_button.dart';
import 'login_screen.dart';
import 'registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: Duration(seconds: 1),vsync: this);

    animation = ColorTween(begin: Colors.grey,end: Colors.white).animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: 60.0,
                    ),
                  ),
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            BigButtons(
              buttonColor: Colors.lightBlueAccent,
              onpressed: () {
                setState(() {
                  Navigator.pushNamed(context, LoginScreen.id);
                });
              },

              text: Text('login'),
            ),

            BigButtons(
              buttonColor:Colors.blueAccent ,
              onpressed: () {
                setState(() {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                  });
                },
              text: Text(
                'Register',
              ),
            ),
          ],
        ),
      ),
    );
  }
}


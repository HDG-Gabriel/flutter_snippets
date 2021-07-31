import 'package:flutter/material.dart';
import 'package:beer_coffe/screens/sign_in.dart';
import 'package:beer_coffe/styles/style.dart';

class WelcomeScreen extends StatelessWidget {
  static const Color orange = Color.fromRGBO(255, 185, 0, 1);

  void _goSignInScreen(BuildContext context, StatelessWidget route) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => route),
    );
  }

  @override
  Widget build(BuildContext context) {
    const String logo =
        'https://icon-library.com/images/icon-beer/icon-beer-5.jpg';
    final heightScreen = MediaQuery.of(context).size.height;

    var topSide = Container(
      height: heightScreen / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: heightScreen / 6,
            child: Image.network(logo),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 23),
            child: Image.asset('images/logo.png'),
          ),
          const Text('BEERCAFE', style: StyleWelcomeScreen.title),
        ],
      ),
    );

    var buttonSignIn = ElevatedButton(
      onPressed: () {
        _goSignInScreen(context, SignInScreen());
      },
      child: const Text('Sign In'),
      style: StyleWelcomeScreen.buttonSignIn,
    );

    var buttonSignUp = ElevatedButton(
      onPressed: () {},
      child: const Text('Sign Up'),
      style: StyleWelcomeScreen.buttonSignUp,
    );

    var downSide = Container(
      height: heightScreen / 2.5,
      decoration: BoxDecoration(
        color: orange,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: StyleWelcomeScreen.title2,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisi leo, imperdiet vitae magna at.',
                style: StyleWelcomeScreen.body,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttonSignIn,
                buttonSignUp,
              ],
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          topSide,
          downSide,
        ],
      ),
    );
  }
}

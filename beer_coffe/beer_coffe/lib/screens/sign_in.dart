import 'package:beer_coffe/screens/welcome.dart';
import 'package:beer_coffe/styles/SignInStyle.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final _actionApp = <Widget>[
    TextButton(
      onPressed: () {},
      child: Text(
        'Register',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  ];

  Widget _makeFieldInput(String text) {
    return TextField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  // Create a custom buttom that do login trough network (google, facebook etc...)
  Widget _makeButtonLoginNetwork(String urlLogo, String text) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: StyleSignInScreen.buttonSignInNetwork,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(urlLogo),
            ),
            Text(text),
            Icon(Icons.arrow_right_alt),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.width;

    final logoGoogle =
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/600px-Google_%22G%22_Logo.svg.png';
    final logoFacebook =
        'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512';

    var buttonSignIn = Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('SIGN IN'),
          ],
        ),
        style: StyleSignInScreen.buttonSignIn,
      ),
    );

    var forgotPassword = Container(
      margin: EdgeInsets.only(top: 10, right: 10, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text('Forgot password?'),
        ],
      ),
    );

    var top = Container(
      height: height / 2.2,
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text('Sign In', style: StyleSignInScreen.title),
          ),
          Text(
            'Lorem ipsum dolor si amet, consectur adipiscing elit, sed do tempor.',
            style: StyleSignInScreen.subTitle,
          ),
        ],
      ),
    );

    var body = Container(
      width: width,
      height: height / 0.8,
      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: Column(
        children: [
          _makeFieldInput('Username'),
          SizedBox(height: 20),
          _makeFieldInput('Password'),
          forgotPassword,
          buttonSignIn,
          _makeButtonLoginNetwork(logoGoogle, 'Continue with Google'),
          _makeButtonLoginNetwork(logoFacebook, 'Continue with Facebook'),
        ],
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: WelcomeScreen.orange,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: _actionApp,
        elevation: 0,
        backgroundColor: WelcomeScreen.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          top,
          body,
        ],
      ),
    );
  }
}

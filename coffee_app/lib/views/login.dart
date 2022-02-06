import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final bannerLinks = <String, String>{
    '1':
        'https://www.adamgault.co.uk/wp-content/uploads/2015/11/TradeIndustry038.jpg',
    '2':
        'https://adminassets.devops.arabiaweather.com/sites/default/files/field/image/coffee3.jpg',
    '3':
        'https://images.unsplash.com/photo-1587080413959-06b859fb107d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y29mZmVlJTIwY3VwfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 0.8 * MediaQuery.of(context).size.height,
            child: PageView(
              controller: PageController(),
              children: [
                bannerLogin(context, imgBackground: bannerLinks['1']!),
                bannerLogin(context, imgBackground: bannerLinks['2']!),
                bannerLogin(context, imgBackground: bannerLinks['3']!),
              ],
            ),
          ),
          Text(
            'Sign in to continue'.toUpperCase(),
            style: const TextStyle(
              fontSize: 16,
              letterSpacing: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              circleButtonLogin(icon: Icons.ac_unit_outlined),
              circleButtonLogin(icon: Icons.light_mode_outlined),
              circleButtonLogin(icon: Icons.cloud),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/auth');
                },
                child: const Text('EMAIL'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  side: const BorderSide(color: Colors.black),
                  shape: const StadiumBorder(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget circleButtonLogin({required IconData icon}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, size: 25),
      ),
    );
  }

  Widget bannerLogin(BuildContext context, {required String imgBackground}) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      width: width,
      padding: const EdgeInsetsDirectional.all(16),
      margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              imgBackground,
            )),
      ),
      child: Column(
        children: [
          Text(
            'Coffee beans'.toUpperCase(),
            style: const TextStyle(fontSize: 42, color: Colors.white),
          ),
          Text(
            'Monthly subscriptions'.toUpperCase(),
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
          const Spacer(),
          const Text(
            "I'm a coffee fanatic. Once you go to proper coffee you can't go back. You cannot go back.",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

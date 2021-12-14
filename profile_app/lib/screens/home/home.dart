import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:profile_app/models/profile.dart';
import 'package:profile_app/screens/home/quick_action.dart';
import '../../utils/text.dart' as utils;

class HomeScreen extends StatefulWidget {
  static const double _widthPhoto = 70;

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _gradient = const LinearGradient(
    colors: [
      Color.fromRGBO(154, 77, 255, 1),
      Color.fromRGBO(110, 30, 200, 1),
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  int _index = 0;

  void _tap(int i) => setState(() {
        _index = i;
      });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    const profile = Profile(
      name: 'Cameron Diaz',
      city: 'San Diego',
      image:
          'https://pt.unbilgi.com/wp-content/uploads/2020/12/Cameron-Diaz-770x433.jpg',
      numbers: {'followers': '10.5M', 'following': '35', 'totalLike': '1.27B'},
    );

    final _bottomNavigation = BottomNavigationBar(
      onTap: _tap,
      currentIndex: _index,
      type: BottomNavigationBarType.shifting,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: const Color.fromRGBO(154, 77, 255, 1),
      unselectedItemColor: Colors.grey[350],
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: '0',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.format_align_justify_rounded),
          label: '1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.thumb_up),
          label: '2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '3',
        ),
      ],
    );

    final top = Card(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
      elevation: 10,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 4, 0),
        decoration: BoxDecoration(
          gradient: _gradient,
        ),
        width: width,
        height: 0.32 * height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.white,
                ),
                SizedBox(width: 15)
              ],
            ),
            Text(
              'Profile',
              style: utils.ThemeText.title,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    profile.image,
                    width: HomeScreen._widthPhoto,
                    height: HomeScreen._widthPhoto,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profile.name,
                      style: utils.ThemeText.name,
                    ),
                    Text(
                      profile.city,
                      style: utils.ThemeText.city,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    const Text(
                      'Followers',
                      style: utils.ThemeText.subtitle,
                    ),
                    Text(
                      profile.numbers['followers']!,
                      style: utils.ThemeText.number,
                    )
                  ]),
                  Container(width: 1, height: 30, color: Colors.grey[200]),
                  Column(children: [
                    const Text(
                      'Following',
                      style: utils.ThemeText.subtitle,
                    ),
                    Text(
                      profile.numbers['following']!,
                      style: utils.ThemeText.number,
                    )
                  ]),
                  Container(width: 1, height: 30, color: Colors.grey[200]),
                  Column(children: [
                    const Text(
                      'Total Like',
                      style: utils.ThemeText.subtitle,
                    ),
                    Text(
                      profile.numbers['totalLike']!,
                      style: utils.ThemeText.number,
                    )
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    final cards = Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: width,
      height: 0.18 * height,
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        scrollDirection: Axis.horizontal,
        children: const [
          QuickAction(
            text: 'Live\nBroadcast',
            color: Colors.blue,
            gradient: QuickAction.blueGradient,
            image: 'images/wallet.png',
          ),
          QuickAction(
            text: 'My\nWallet',
            color: Colors.purple,
            gradient: QuickAction.purpleGraient,
            image: 'images/microphone.png',
          ),
          QuickAction(
            text: 'Game\nCenter',
            color: Colors.pink,
            gradient: QuickAction.redGradient,
            image: 'images/joystick.png',
          ),
        ],
      ),
    );

    final names = <int, Map<String, IconData>>{
      0: {'Memories': Icons.hourglass_bottom},
      1: {'Favorites': Icons.favorite_outlined},
      2: {'Presents': Icons.card_giftcard_outlined},
      3: {'Friends': Icons.group_outlined},
      4: {'Achievement': Icons.emoji_events_outlined},
    };

    final sections = SizedBox(
      width: width,
      height: 0.39 * height,
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (_, i) => ListTile(
          leading: Container(
            padding: const EdgeInsetsDirectional.all(2),
            decoration: BoxDecoration(
              gradient: _gradient,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              names[i]!.values.single,
              color: Colors.white,
            ),
          ),
          title: Text(
            names[i]!.keys.single,
            style: utils.ThemeText.main,
          ),
          trailing: const Icon(Icons.chevron_right_rounded),
        ),
      ),
    );

    final body = ListView(
      children: [top, cards, sections],
    );

    return Scaffold(
      body: body,
      bottomNavigationBar: _bottomNavigation,
    );
  }
}

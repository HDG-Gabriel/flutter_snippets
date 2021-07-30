import 'package:flutter/material.dart';

enum Section {
  Top,
  Down,
}

class Profile extends StatelessWidget {
  final String photo =
      'https://yt3.ggpht.com/ytc/AKedOLQAWPJuUEjhaFpmD6QQn6dGt6mdSr6QEPoNlQPdCQ=s88-c-k-c0x00ffffff-no-rj';

  final actions = [
    IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.search,
      ),
    )
  ];

  LinearGradient _gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(148, 21, 212, 1),
      Color.fromRGBO(46, 31, 207, 1),
    ],
  );

  final titleApp = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text('Profile'),
    ],
  );

  final leadingApp = IconButton(
    icon: Icon(Icons.keyboard_return),
    onPressed: () {},
  );

  Widget _makeIconColumn({
    required IconData icon,
    required String text,
    required BuildContext context,
    required Section type,
  }) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: type == Section.Top ? Colors.white : Colors.grey,
          size: MediaQuery.of(context).size.width / 9,
        ),
        Text(
          text,
          style: type == Section.Top
              ? Theme.of(context).textTheme.bodyText1
              : Theme.of(context).textTheme.bodyText2,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var iconsSection = Container(
      margin: EdgeInsets.symmetric(
        vertical: 33,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _makeIconColumn(
              icon: Icons.group_add,
              text: 'Friends',
              context: context,
              type: Section.Top),
          _makeIconColumn(
              icon: Icons.group,
              text: 'Groups',
              context: context,
              type: Section.Top),
          _makeIconColumn(
              icon: Icons.videocam,
              text: 'Videos',
              context: context,
              type: Section.Top),
          _makeIconColumn(
              icon: Icons.favorite,
              text: 'Likes',
              context: context,
              type: Section.Top),
        ],
      ),
    );

    var subscribersInfo = Column(
      children: [
        Text(
          'Subscribers',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          '30K',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );

    var nomeUser = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Marina Rios',
          style: Theme.of(context).textTheme.headline1,
        ),
      ],
    );

    var videosInfo = Column(
      children: [
        Text(
          'Videos',
          style: Theme.of(context).textTheme.caption,
        ),
        Text(
          '70',
          style: Theme.of(context).textTheme.caption,
        ),
      ],
    );

    var imageUser = CircleAvatar(
      backgroundImage: NetworkImage(photo),
      radius: 70,
    );

    var photoSection = Container(
      margin: EdgeInsets.symmetric(
        vertical: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          subscribersInfo,
          imageUser,
          videosInfo,
        ],
      ),
    );

    var downSection = Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _makeIconColumn(
                icon: Icons.table_chart,
                text: 'Leaders',
                context: context,
                type: Section.Down,
              ),
              _makeIconColumn(
                icon: Icons.show_chart,
                text: 'Level Up',
                context: context,
                type: Section.Down,
              ),
              _makeIconColumn(
                icon: Icons.card_giftcard_outlined,
                text: 'Leaders',
                context: context,
                type: Section.Down,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _makeIconColumn(
                  icon: Icons.code,
                  text: 'QR Code',
                  context: context,
                  type: Section.Down,
                ),
                _makeIconColumn(
                  icon: Icons.blur_circular,
                  text: 'Daily Bonus',
                  context: context,
                  type: Section.Down,
                ),
                _makeIconColumn(
                  icon: Icons.visibility,
                  text: 'Visitors',
                  context: context,
                  type: Section.Down,
                ),
              ],
            ),
          ),
        ],
      ),
    );

    var topSection = Container(
      height: MediaQuery.of(context).size.height / 2,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        gradient: _gradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          photoSection,
          nomeUser,
          iconsSection,
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(148, 21, 212, 1),
        title: titleApp,
        leading: leadingApp,
        actions: actions,
      ),
      body: Column(
        children: [
          topSection,
          downSection,
        ],
      ),
    );
  }
}

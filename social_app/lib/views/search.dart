import 'package:flutter/material.dart';
import 'package:social_app/mock/profile.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  final profiles = <Profile>[
    Profile(
      name: 'Zendaya',
      surname: 'Coleman',
      localization: 'Oakland, California',
      image:
          'https://assets.teenvogue.com/photos/55828eec941a95530d042e29/master/w_420,h_630,c_limit/beauty-celebrity-beauty-2015-01-zendaya-beauty-evolution-01.jpg',
          followers: 999,
          posts: 40,
          following: 132,
    ),
    Profile(
      name: 'Camaron',
      surname: 'Díaz',
      localization: 'San Diego, California',
      image:
          'https://cinema10.com.br/upload/personalidades/personalidades_2162_diaz.jpg?default=personalidade&v=2',
    ),
    Profile(
      name: 'Veronica',
      surname: 'Dunne',
      localization: 'Malibu, California',
      image:
          'https://i.pinimg.com/564x/79/4e/fe/794efebbe432acfd70cb168b0d64ba9a.jpg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height * 0.8,
            child: Image.network(
              profiles[0].image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildAboveInformation(context, profiles[0]),
              const SizedBox(height: 20),
              _buildBellowSection(context, profiles[0]),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.person_outline, color: Colors.white),
                  Icon(Icons.close, color: Colors.white),
                ]),
          ),
        ],
      ),
    );
  }

  Widget _buildBellowSection(BuildContext context, Profile p) {
    return Container(
      padding: const EdgeInsets.all(18),
      width: MediaQuery.of(context).size.width,
      height: 0.15 * MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                p.name.toString() + ' ' + p.surname.toString(),
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                p.localization,
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text(
              'Follow'.toUpperCase(),
              style: const TextStyle(
                letterSpacing: 1.1,
              ),
            ),
            style: OutlinedButton.styleFrom(
              primary: Colors.red,
              side: const BorderSide(
                width: 2,
                color: Colors.red,
              ),
              shape: const StadiumBorder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboveInformation(BuildContext context, Profile p) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                p.followers.toString(),
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                'followers',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                p.posts.toString(),
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                'posts',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                p.following.toString(),
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                'following',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);

  static const colorBrown = Color.fromARGB(255, 109, 42, 0);
  static const bannerImage =
      'https://www.adamgault.co.uk/wp-content/uploads/2015/11/TradeIndustry038.jpg';

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            Container(
              height: 0.5 * height,
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(AuthView.bannerImage),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      _currentIndex == 0
                          ? Icons.person
                          : Icons.group_add_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 40,
                    child: TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: [
                          Text('Sign in'.toUpperCase()),
                          Text('Sign up'.toUpperCase())
                        ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.425 * MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(controller: _tabController, children: const [
                LoginContent(),
                RegisterContent(),
              ]),
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_outlined),
              ),
              const Text('Social Login'),
              const Spacer(),
              Container(
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AuthView.colorBrown),
                  child: const Icon(Icons.arrow_forward_outlined,
                      color: Colors.white)),
            ]),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: AuthView.colorBrown),
              hintText: 'Email adress',
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              style: TextButton.styleFrom(primary: Colors.grey),
              onPressed: () {},
              child: const Text('Forgot?'),
            ),
          ],
        ),
        const TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: AuthView.colorBrown),
              hintText: 'Password',
            )),
      ],
    );
  }
}

class RegisterContent extends StatelessWidget {
  const RegisterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              icon: Icon(Icons.person, color: AuthView.colorBrown),
              hintText: 'Name',
            )),
        const SizedBox(height: 30),
        const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: AuthView.colorBrown),
              hintText: 'Email adress',
            )),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          TextButton(
              onPressed: () {},
              child: const Text('Forgot?'),
              style: TextButton.styleFrom(primary: Colors.grey)),
        ]),
        const TextField(
            keyboardType: TextInputType.number,
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: AuthView.colorBrown),
              hintText: 'Password',
            )),
      ],
    );
  }
}

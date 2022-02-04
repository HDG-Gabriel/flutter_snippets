import 'package:flutter/material.dart';

import 'package:santander_ui/styles/style.dart';
import 'package:santander_ui/styles/drawer_style.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color.fromRGBO(235, 28, 36, 1),
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu_outlined),
        ),
      ),
      actions: const [
        Icon(Icons.location_on),
      ],
      centerTitle: true,
      title: SizedBox(
        width: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://pbs.twimg.com/profile_images/1011703227996299264/VAvZoVE9_400x400.jpg',
              height: 60,
            ),
            const Text('Santander'),
          ],
        ),
      ),
    );

    final drawer = SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        backgroundColor: Colors.white,
        child: buildDrawer(context),
      ),
    );

    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    final height = MediaQuery.of(context).size.height - 80;

    return Column(
      children: [
        // Banner
        Container(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          color: Colors.red,
          height: 2 / 3 * height,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Column(
                    children: [
                      Text(
                          'Garantir sua proteção custa muito pouco'
                              .toUpperCase(),
                          style: Style.bannerTitleText),
                      RichText(
                        text: const TextSpan(
                          style: Style.defaultSpanStyle,
                          text: 'Contrate o ',
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Seguro Acidentes Pessoais ',
                                style: Style.bannerBoldText),
                            TextSpan(text: 'e pague menos de R\$ 1 por dia!'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.new_releases_outlined,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: Style.simulateButton,
              child: Text('Simule aqui'.toUpperCase()),
            ),
          ]),
        ),
        // Options below
        Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          color: Colors.grey[200],
          height: 1 / 3 * height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              optionButton(
                context: context,
                text: 'Atendimento',
                icon: Icons.question_answer_outlined,
              ),
              optionButton(
                context: context,
                text: 'ID Santander',
                icon: Icons.lock_open_outlined,
              ),
              optionButton(
                context: context,
                text: 'Acessar sua conta',
                icon: Icons.login_outlined,
                isJoinAccount: true,
                onPressed: () => Navigator.pushNamed(context, '/acess'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget optionButton({
    required BuildContext context,
    required String text,
    bool isJoinAccount = false,
    IconData? icon,
    void Function()? onPressed,
  }) {
    final side = (MediaQuery.of(context).size.width - 70) / 3;
    onPressed ??= () {};

    return SizedBox(
      height: side,
      width: side,
      child: ElevatedButton(
        onPressed: onPressed,
        style: isJoinAccount ? Style.joinButtonStyle : Style.defaultButtonStyle,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: isJoinAccount ? Colors.white : Colors.red,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: isJoinAccount ? Style.joinText : Style.optionText,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDrawer(BuildContext context) {
    final info = <String, Map<String, IconData>>{
      'Way': {'Gerencie seus cartões': Icons.credit_card_outlined},
      'Esfera': {
        'Rede de parcerias do Santander': Icons.panorama_photosphere_outlined
      },
      'Toro Investimentos': {
        'Invista fácil e sem corretagem': Icons.smartphone_outlined
      },
      'Sim': {'Empréstimo rápido e 100% digital': Icons.soap_outlined},
      'emDia': {
        'Negocie dívidas sem complicações': Icons.account_balance_outlined
      },
    };

    final options = ListView.separated(
      separatorBuilder: (context, _) => const Divider(
        color: Colors.grey,
        thickness: 1,
      ),
      padding: EdgeInsets.zero,
      itemCount: info.length,
      itemBuilder: (context, i) {
        return ListTile(
          trailing: const Icon(Icons.navigate_next_outlined),
          minLeadingWidth: 5,
          title: Text(
            info.keys.toList()[i],
            style: DrawerStyle.Title,
          ),
          leading: Icon(
            info.values.toList()[i].values.first,
            color: Colors.red,
            size: 30,
          ),
          subtitle: Text(
            info.values.toList()[i].keys.first,
            style: DrawerStyle.Subtitle,
          ),
        );
      },
    );

    final body = Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close_sharp,
              size: 35,
            ),
          ),
          title: const Center(
            child: Text(
              'Conheça também',
              style: DrawerStyle.Title,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Expanded(child: options),
        Image.network(
          'https://dicacard.com/wp-content/uploads/2020/11/fafcce8c-novo-cartao-de-credito-santander-sx-1.png',
          width: 280,
        ),
      ],
    );

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
        child: body,
      ),
    );
  }
}

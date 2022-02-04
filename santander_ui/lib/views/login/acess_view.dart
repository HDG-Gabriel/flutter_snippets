import 'package:flutter/material.dart';

class AcessView extends StatelessWidget {
  const AcessView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: const Color.fromRGBO(235, 28, 36, 1),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_outlined,
          color: Colors.white,
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

    return Scaffold(
      appBar: appBar,
      resizeToAvoidBottomInset: false,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    const cpfInput = TextField(
        keyboardType: TextInputType.number,
        maxLines: 1,
        decoration: InputDecoration(
            labelText: 'CPF',
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            )));

    const passwordInput = TextField(
        keyboardType: TextInputType.number,
        maxLines: 1,
        obscureText: true,
        decoration: InputDecoration(
            labelText: 'Senha',
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            )));

    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 20, 14, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Acessar sua conta',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          cpfInput,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Lembrar meu CPF'),
              Switch(
                value: false,
                onChanged: (value) {},
                activeColor: Colors.red,
              ),
            ],
          ),
          const SizedBox(height: 20),
          passwordInput,
          TextButton(
            onPressed: () {},
            child: const Text('Esqueci minha senha'),
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              primary: Colors.red,
              textStyle: const TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Entrar'),
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width, 35),
              primary: const Color(0xFFFF0000),
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medical_app/styles/home_screen_style.dart';
import 'package:medical_app/models/custom_card.dart';

class HomeScreen extends StatelessWidget {
  Widget _createCustomButton({required String text, required IconData icon}) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            text,
            style: HomeScreenStyle.genericStyle,
          ),
          Spacer(),
          Icon(icon, color: Colors.grey),
        ],
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50),
        elevation: 0,
        primary: Colors.white,
        padding: EdgeInsets.all(0),
      ),
    );
  }

  Widget _makeListOption(
      {required String name, IconData icon = Icons.car_repair}) {
    const double side = 90;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: side,
            height: side,
            decoration: BoxDecoration(
              color: HomeScreenStyle.cinza,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                icon,
                size: side / 2,
              ),
            ),
          ),
          Text(
            name,
            style: HomeScreenStyle.listItemStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final userButton = IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.person_outline_outlined,
        color: Colors.white,
      ),
    );

    final userShowMoneyButton = IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.remove_red_eye_outlined,
        color: Colors.white,
      ),
    );

    final doubtButton = IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.help_outline_outlined,
        color: Colors.white,
      ),
    );

    final messageButton = IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.mark_email_read_outlined,
        color: Colors.white,
      ),
    );

    var topSide = Container(
      width: width,
      height: (1 / 5) * height,
      color: Colors.purple,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              userButton,
              Spacer(),
              userShowMoneyButton,
              doubtButton,
              messageButton,
            ],
          ),
          Spacer(flex: 2),
          Row(
            children: [
              const Text(
                'Olá, Gabriel',
                style: HomeScreenStyle.greetingUser,
              )
            ],
          ),
          Spacer(),
        ],
      ),
    );

    final accountButton = _createCustomButton(
      text: 'Conta',
      icon: Icons.keyboard_arrow_right,
    );

    final listOption = Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: width,
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _makeListOption(name: 'Área Pix', icon: Icons.api_rounded),
          _makeListOption(name: 'Pagar', icon: Icons.payment_outlined),
          _makeListOption(name: 'Tranferir', icon: Icons.money),
          _makeListOption(name: 'Depositar', icon: Icons.price_change_outlined),
          _makeListOption(
              name: 'Recarga de celular', icon: Icons.phone_android_outlined),
          _makeListOption(name: 'Cobrar', icon: Icons.monetization_on_outlined),
          _makeListOption(name: 'Doação', icon: Icons.favorite_border_outlined)
        ],
      ),
    );

    final myCards = ElevatedButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(Icons.card_giftcard),
          Padding(padding: EdgeInsets.only(right: 10)),
          const Text('Meus cartões'),
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: HomeScreenStyle.cinza,
        onPrimary: Colors.black,
        padding: EdgeInsets.all(10),
        shape: StadiumBorder(),
      ),
    );

    /* =====================================================
     *                 Seção Cartão de Crédito
     * =====================================================
     */

    final activeCreditCardSection = Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: width,
      height: height / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.phone_android_outlined),
          const Text(
            'Cartão de crédito',
            style: HomeScreenStyle.genericStyle,
          ),
          Text(
            'Função de crédito disponível para você',
            style: HomeScreenStyle.labelTextStyle,
          ),
          Text(
              'Ative a função crédito do seu novo roxinho e tenha mais controle da sua vida financeira',
              style: HomeScreenStyle.label2TextStyle),
          ElevatedButton(
            onPressed: () {},
            child: const Text('ATIVAR CRÉDITO'),
            style: HomeScreenStyle.buttonStyle,
          ),
        ],
      ),
    );

    // =====================================================

    /* =====================================================
     *       Seção Informações do Cartão de Crédito
     * =====================================================
     */

    final infoCreditCard = Container(
      width: width,
      height: height / 3.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.phone_android_outlined),
          _createCustomButton(
            text: 'Cartão de crédito',
            icon: Icons.keyboard_arrow_right,
          ),
          Text(
            'Fatura atual',
            style: HomeScreenStyle.labelTextStyle,
          ),
          const Text(
            'R\$ 0,00',
            style: HomeScreenStyle.genericStyle,
          ),
          Text(
            'Limite disponível de R\$ 200,00',
            style: HomeScreenStyle.label2TextStyle,
          ),
        ],
      ),
    );

    // =====================================================

    /* =====================================================
     *                 Seção Descubra Mais
     * =====================================================
     */
    final listCardSection = Container(
      width: width,
      height: 170,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: CustomCard(
                title: 'WhatsApp',
                text:
                    'Pagamentos seguros, rápidos e sem tarifa. A experiẽncia Nubank sem nem sair da conversa',
                textButton: 'Quero conhecer'),
          ),
          CustomCard(
              title: 'Indique seus amigos',
              text:
                  'Mostre aos seus amigos como é fácil ter uma vida sem burocracia',
              textButton: 'Indicar amigos'),
        ],
      ),
    );

    final lastSection = Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: const Text('Descubra mais',
                style: HomeScreenStyle.genericStyle),
          ),
          listCardSection,
        ],
      ),
    );

    // =====================================================

    var body = Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          accountButton,
          const Text(
            'R\$ 1.108.550,40',
            style: HomeScreenStyle.genericStyle,
          ),
          listOption,
          myCards,
          activeCreditCardSection,
          infoCreditCard,
          lastSection,
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          topSide,
          body,
        ],
      ),
    );
  }
}

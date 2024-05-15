import 'package:flutter/material.dart';
import 'package:kaboukabou/acceuil_page.dart';
import 'package:kaboukabou/classement_page.dart';
import 'package:kaboukabou/faq_page.dart';
import 'package:kaboukabou/footer.dart';
import 'package:kaboukabou/profile_page.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: ReglesPage(),
  ));
}

class ReglesPage extends StatefulWidget {
  @override
  _ReglesPageState createState() => _ReglesPageState();
}

class _ReglesPageState extends State<ReglesPage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => AcceuilPage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ClassementPage()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ReglesPage()),
        );
        break;
      case 3:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF6341D8),
        shadowColor: const Color(0xFF6341D8),
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            const Text(
              'Reglèments',
              style: TextStyle(
                fontFamily: 'Riffic',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
             GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FaqPage()),
                );
              },
              child: Image.asset(
                'assets/images/Group100.png',
                width: 32,
                height: 32,
              ),
            )
          ],
        ),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF6341D8),
              Color(0xFF362677),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Vous pouvez consulter l'intégralité du règlement sur le site web:  ",
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        launch('https://kabou.kabou.bj/reglement/');
                      },
                      child: const Text(
                        'https://kabou.kabou.bj/reglement/ ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: SingleChildScrollView(
              child: Container(
                child: Card(
                  margin: EdgeInsets.zero,
                  elevation: 0,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF6DD5D5),
                                  Color(0xFF2F8383),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 16),
                                      const Text(
                                        'Principe du jeu',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Riffic',
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 8),
                                      const Text(
                                        'La société KAMGOKO Technologies est le promot...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return OffCanvasBottomMenu(
                                                  title: 'Principe du jeu',
                                                  content: Column(children: [
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'La société  ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' KAMGOKO Technologies ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                'est le promoteur de ',
                                                          ),
                                                          TextSpan(
                                                            text: 'kabou kabou',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' un jeu de culture générale dont les questions sont réparties en plusieurs catégories telles que la culture, le sport, la politique et l’histoire entre autres et qui portent exclusivement sur le Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Basé sur les connaissances et la rapidité des joueurs, ce jeu disponible gratuitement sur  application mobile 24H/24 durant deux mois entre le 30/10/2023 au 31/12/2023 vise à récompenser les joueurs ayant cumulé un maximum de points de façon périodique et avec un tirage au sort à la fin du jeu.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Le jeu kabou kabou se déroulera suivant la procédure décrite à l’article 5 ci-après et les lots seront payables par Mobile Money ou Moov Money ou en Espèce. Toutefois, libre choix est laissé au joueur de se prononcer sur d’autres canaux appropriés par lequel il entend recevoir son gain.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'Le présent règlement est pris en application de l’arrêté ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' 2012-011/MEF/DC/SGM/LNB du 31 Janvier 2012',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' portant modalités d’organisation des tombolas promotionnelles organisées par les entreprises individuelles et sociétés commerciales en République du Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]));
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/images/Principe.png',
                                      width: 88,
                                      height: 88,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFD2A15),
                                  Color(0xFFAF0000),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 16),
                                      const Text(
                                        'Cible du jeu',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Riffic',
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 5),
                                      const Text(
                                        'Kabou kabou est un jeu dont les critères d’éligibilité sont ... ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return OffCanvasBottomMenu(
                                                  title: 'Cible du jeu',
                                                  content: Column(children: [
                                                    const Text(
                                                      'Kabou kabou est un jeu dont les critères d’éligibilité sont les suivants :',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 8),
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                '. Être une personne physique âgée de',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' 18 ans révolus ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 8),
                                                    const Text(
                                                      '. Aux béninois et toute autre nationalité',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Le ou la participant(e) est identifié(e) à sur WhatsApp (par son numéro de téléphone et son nom qu’il fournit lui-même ainsi qu’un pseudo), sur Messenger ( son nom, son numéro de téléphone, son pseudo et toutes les autres informations publiques de son profil), sur Application mobile (son nom, prénom numéro de téléphone fournit lors de son inscription). Toutes ces informations sont fournies ou automatiquement récupérées lors de l’inscription au jeu.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                  ]));
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/images/Cible.png',
                                      width: 88,
                                      height: 88,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFE6286D),
                                  Color(0xFFB6144F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 16),
                                      const Text(
                                        'Mécanisme du jeu ',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Riffic',
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'La société KAMGOKO Technologies est le promot...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return OffCanvasBottomMenu(
                                                  title: 'Mécanisme du jeu',
                                                  content: Column(children: [
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'La société  ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' KAMGOKO Technologies ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                'est le promoteur de ',
                                                          ),
                                                          TextSpan(
                                                            text: 'kabou kabou',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' un jeu de culture générale dont les questions sont réparties en plusieurs catégories telles que la culture, le sport, la politique et l’histoire entre autres et qui portent exclusivement sur le Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Basé sur les connaissances et la rapidité des joueurs, ce jeu disponible gratuitement sur  application mobile 24H/24 durant deux mois entre le 30/10/2023 au 31/12/2023 vise à récompenser les joueurs ayant cumulé un maximum de points de façon périodique et avec un tirage au sort à la fin du jeu.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Le jeu kabou kabou se déroulera suivant la procédure décrite à l’article 5 ci-après et les lots seront payables par Mobile Money ou Moov Money ou en Espèce. Toutefois, libre choix est laissé au joueur de se prononcer sur d’autres canaux appropriés par lequel il entend recevoir son gain.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'Le présent règlement est pris en application de l’arrêté ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' 2012-011/MEF/DC/SGM/LNB du 31 Janvier 2012',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' portant modalités d’organisation des tombolas promotionnelles organisées par les entreprises individuelles et sociétés commerciales en République du Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]));
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/images/Mecanisme.png',
                                      width: 88,
                                      height: 88,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF6341D8),
                                  Color(0xFF362677),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 16),
                                      const Text(
                                        'Les Interdictions',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Riffic',
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'La société KAMGOKO Technologies est le promot...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return OffCanvasBottomMenu(
                                                  title: 'Les Interdictions',
                                                  content: Column(children: [
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'La société  ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' KAMGOKO Technologies ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                'est le promoteur de ',
                                                          ),
                                                          TextSpan(
                                                            text: 'kabou kabou',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' un jeu de culture générale dont les questions sont réparties en plusieurs catégories telles que la culture, le sport, la politique et l’histoire entre autres et qui portent exclusivement sur le Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Basé sur les connaissances et la rapidité des joueurs, ce jeu disponible gratuitement sur  application mobile 24H/24 durant deux mois entre le 30/10/2023 au 31/12/2023 vise à récompenser les joueurs ayant cumulé un maximum de points de façon périodique et avec un tirage au sort à la fin du jeu.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Le jeu kabou kabou se déroulera suivant la procédure décrite à l’article 5 ci-après et les lots seront payables par Mobile Money ou Moov Money ou en Espèce. Toutefois, libre choix est laissé au joueur de se prononcer sur d’autres canaux appropriés par lequel il entend recevoir son gain.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'Le présent règlement est pris en application de l’arrêté ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' 2012-011/MEF/DC/SGM/LNB du 31 Janvier 2012',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' portant modalités d’organisation des tombolas promotionnelles organisées par les entreprises individuelles et sociétés commerciales en République du Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]));
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/images/Interdiction.png',
                                      width: 88,
                                      height: 88,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF6DD5D5),
                                  Color(0xFF2F8383),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 16),
                                      const Text(
                                        'Attribution de points',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Riffic',
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 5),
                                      const Text(
                                        'La société KAMGOKO Technologies est le promot...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return OffCanvasBottomMenu(
                                                  title:
                                                      'Attribution de points',
                                                  content: Column(children: [
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'La société  ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' KAMGOKO Technologies ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                'est le promoteur de ',
                                                          ),
                                                          TextSpan(
                                                            text: 'kabou kabou',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' un jeu de culture générale dont les questions sont réparties en plusieurs catégories telles que la culture, le sport, la politique et l’histoire entre autres et qui portent exclusivement sur le Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Basé sur les connaissances et la rapidité des joueurs, ce jeu disponible gratuitement sur  application mobile 24H/24 durant deux mois entre le 30/10/2023 au 31/12/2023 vise à récompenser les joueurs ayant cumulé un maximum de points de façon périodique et avec un tirage au sort à la fin du jeu.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    const Text(
                                                      'Le jeu kabou kabou se déroulera suivant la procédure décrite à l’article 5 ci-après et les lots seront payables par Mobile Money ou Moov Money ou en Espèce. Toutefois, libre choix est laissé au joueur de se prononcer sur d’autres canaux appropriés par lequel il entend recevoir son gain.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    RichText(
                                                      text: const TextSpan(
                                                        style: TextStyle(
                                                            fontSize: 16.0,
                                                            color: Colors.black,
                                                            fontFamily:
                                                                'Montserrat'),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                'Le présent règlement est pris en application de l’arrêté ',
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' 2012-011/MEF/DC/SGM/LNB du 31 Janvier 2012',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                ' portant modalités d’organisation des tombolas promotionnelles organisées par les entreprises individuelles et sociétés commerciales en République du Bénin.',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]));
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/images/Attribution.png',
                                      width: 88,
                                      height: 88,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFE6286D),
                                  Color(0xFFB6144F),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 16),
                                      const Text(
                                        'Attribution des gains',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'Riffic',
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'La société KAMGOKO Technologies est le promot...',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 5),
                                      ElevatedButton(
                                        onPressed: () {
                                          showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (BuildContext context) {
                                              return const OffCanvasBottomMenu(
                                                  title:
                                                      'Attribution des gains',
                                                  content: Column(children: [
                                                    Text(
                                                      'Le système d’attribution des points fonctionne comme suit :',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                    ),
                                                    SizedBox(height: 12),
                                                    Text(
                                                      '. Le jeu est gratuit pour tous les participants',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(height: 12),
                                                    Text(
                                                      '. Pour jouer, chaque joueur donne une réponse selon la question envoyée par le système. Chaque question est accompagnée de trois propositions de réponses numérotées avec trois premières lettres de l’alphabet (A, B, C). Le joueur indique la lettre correspondant à la réponse qu’il souhaite donner',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(height: 12),
                                                    Text(
                                                      '. Les questions peuvent être au format texte ou image',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(height: 12),
                                                    Text(
                                                      '. Chaque bonne réponse donne droit à des points selon le niveau de difficulté de la question',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(height: 12),
                                                    Text(
                                                      '. Chaque mauvaise réponse engendre automatiquement un retrait de 5 points sur le score du joueur en guise de pénalité.',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(height: 12),
                                                    Text(
                                                      '. Les questions sont organisées en plusieurs catégories et réparties en 4 niveaux de difficultés donnant droit à des points équivalents. Chaque niveau de difficulté est en fonction de la complexité de la question. Les points sont répartis comme suit :',
                                                      style: TextStyle(
                                                          fontSize: 16.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'Montserrat'),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ]));
                                            },
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.asset(
                                      'assets/images/50K-NEW.png',
                                      width: 88,
                                      height: 88,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 96),
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class OffCanvasBottomMenu extends StatelessWidget {
  final String title;
  final Widget content;

  const OffCanvasBottomMenu({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *
          0.8, // 80% de la hauteur de l'écran
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Riffic',
                        color: Color(0xFF362677),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: content,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

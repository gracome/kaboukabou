import 'package:flutter/material.dart';
import 'package:kaboukabou/acceuil_page.dart';
import 'package:kaboukabou/classement1_page.dart';
import 'package:kaboukabou/classement2_page.dart';
import 'package:kaboukabou/faq_page.dart';
import 'package:kaboukabou/footer.dart';
import 'package:kaboukabou/profile_page.dart';
import 'package:kaboukabou/regles_page.dart';

void main() {
  runApp(MaterialApp(
    home: ClassementPage(),
  ));
}

class ClassementPage extends StatefulWidget {
  @override
  _ClassementPageState createState() => _ClassementPageState();
}

class _ClassementPageState extends State<ClassementPage> {
  int _selectedIndex = 1;
  int _index = 0;

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
              'Classement',
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
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
              child: Container(
                height: 40,
                width: double.infinity,
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: const Color(0xFF362677),
                  borderRadius: BorderRadius.circular(800),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassementPage()),
                        );
                        setState(() {
                          _index = 0;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: _index == 0
                              ? const Color(0xFFDBD0FF)
                              : const Color(0xFF362677),
                          borderRadius:
                              BorderRadius.circular(_index == 0 ? 800 : 26),
                        ),
                        child: Text(
                          'Journalier',
                          style: TextStyle(
                              color: _index == 0
                                  ? const Color(0xFF362677)
                                  : Colors.white,
                              fontSize: 12,
                              fontFamily: 'Riffic',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Classement1Page()),
                        );
                        setState(() {
                          _index = 1;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: _index == 1
                              ? const Color(0xFFDBD0FF)
                              : const Color(0xFF362677),
                          borderRadius:
                              BorderRadius.circular(_index == 0 ? 800 : 26),
                        ),
                        child: Text(
                          'Bi-hebdomadaire',
                          style: TextStyle(
                              color: _index == 1
                                  ? const Color(0xFF362677)
                                  : Colors.white,
                              fontSize: 12,
                              fontFamily: 'Riffic',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Classement2Page()),
                        );
                        setState(() {
                          _index = 2;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: _index == 2
                              ? const Color(0xFFDBD0FF)
                              : const Color(0xFF362677),
                          borderRadius:
                              BorderRadius.circular(_index == 0 ? 800 : 26),
                        ),
                        child: Text(
                          'Globale',
                          style: TextStyle(
                              color: _index == 2
                                  ? const Color(0xFF362677)
                                  : Colors.white,
                              fontSize: 12,
                              fontFamily: 'Riffic',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0x26FFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Icon.png',
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                '112e',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Riffic',
                                  fontWeight: FontWeight.w400,
                                  foreground: Paint()
                                    ..shader = const LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFFF8500),
                                        Color(0xFFFFFD00),
                                      ],
                                      stops: [0.0604, 0.6432],
                                    ).createShader(
                                      const Rect.fromLTWH(0.0, 0.0, 0.0, 14.0),
                                    ),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              const Text(
                                'Votre rang',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: const Border(
                          left: BorderSide(
                            color: Color(0x36267733),
                            width: 1.5,
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/stars.png',
                            width: 24,
                            height: 24,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              Text(
                                '680pts',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Riffic',
                                  fontWeight: FontWeight.w400,
                                  foreground: Paint()
                                    ..shader = const LinearGradient(
                                      begin: Alignment.center,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFFFF8500),
                                        Color(0xFFFFFD00),
                                      ],
                                      stops: [0.0604, 0.6432],
                                    ).createShader(
                                      const Rect.fromLTWH(0.0, 0.0, 0.0, 14.0),
                                    ),
                                ),
                              ),
                              const Text(
                                'Votre score',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )
                        ],
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
                  shape: RoundedRectangleBorder(
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Or.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'EjaculateurDesMots',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '1 557 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '2',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Argent.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'HOUESSOU',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '1 257 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '3',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Bronze.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Kris_M',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '2 557 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '4',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Bronze.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Charlie Toussou',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '2 557 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '5',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Bronze.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Kris_M',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '2 557 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '6',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Bronze.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Kris_M',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '2 557 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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
                          color: Color(0xFFDBD0FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            height: 60,
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      const Text(
                                        '7',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Image.asset(
                                        'assets/images/Courrone-Bronze.png',
                                        width: 24,
                                        height: 24,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        'Kris_M',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Riffic',
                                          color: Color(0xFF362677),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(500),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF362677),
                                        Color(0xFF6341D8),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 8),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/stars.png',
                                          width: 18,
                                          height: 17,
                                        ),
                                        const SizedBox(width: 5),
                                        const Text(
                                          '2 557 pts',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Riffic',
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
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

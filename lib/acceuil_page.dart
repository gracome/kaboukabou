import 'package:flutter/material.dart';
import 'package:kaboukabou/classement_page.dart';
import 'package:kaboukabou/espace_jeux.dart';
import 'package:kaboukabou/faq_page.dart';
import 'package:kaboukabou/footer.dart';
import 'package:kaboukabou/profile_page.dart';
import 'package:kaboukabou/regles_page.dart';

void main() {
  runApp(MaterialApp(
    home: AcceuilPage(),
  ));
}

class AcceuilPage extends StatefulWidget {
  @override
  _AcceuilPageState createState() => _AcceuilPageState();
}

class _AcceuilPageState extends State<AcceuilPage> {
  int _selectedIndex = 0;
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
      body: Container(
        constraints: BoxConstraints.expand(),
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/images/Logo-KABOU-KABOU.png',
                  width: 140,
                  height: 150,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  right: 20,
                   child: GestureDetector(
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
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(right: 16, left: 16),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26FFFFFF),
                              ),
                            ],
                          ),
                          child: Card(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                            elevation: 0,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                SizedBox(height: 10),
                                const Center(
                                  child: Text(
                                    'Zannou Arthur',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Riffic',
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 5),
                                const Center(
                                  child: Text(
                                    '+229 91 39 49 20',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontFamily: 'Riffic',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x26FFFFFF),
                                      ),
                                    ],
                                  ),
                                  child: Card(
                                    shape: RoundedRectangleBorder(),
                                    elevation: 0,
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/stars.png',
                                                width: 20,
                                                height: 20,
                                                fit: BoxFit.contain,
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '1400pts',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Riffic',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        foreground: Paint()
                                                          ..shader =
                                                              const LinearGradient(
                                                            begin: Alignment
                                                                .center,
                                                            end: Alignment
                                                                .bottomLeft,
                                                            colors: [
                                                              Color(0xFFFF8500),
                                                              Color(0xFFFFFD00),
                                                            ],
                                                            stops: [
                                                              0.0604,
                                                              0.6432
                                                            ],
                                                          ).createShader(
                                                            const Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                0.0,
                                                                14.0),
                                                          ),
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    const Text(
                                                      'Score journalier',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/stars.png',
                                                width: 20,
                                                height: 20,
                                                fit: BoxFit.contain,
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '8200pts',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Riffic',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        foreground: Paint()
                                                          ..shader =
                                                              const LinearGradient(
                                                            begin: Alignment
                                                                .center,
                                                            end: Alignment
                                                                .bottomLeft,
                                                            colors: [
                                                              Color(0xFFFF8500),
                                                              Color(0xFFFFFD00),
                                                            ],
                                                            stops: [
                                                              0.0604,
                                                              0.6432
                                                            ],
                                                          ).createShader(
                                                            const Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                0.0,
                                                                14.0),
                                                          ),
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    const Text(
                                                      'Score Bi-Hebdo',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/stars.png',
                                                width: 20,
                                                height: 20,
                                                fit: BoxFit.contain,
                                              ),
                                              SizedBox(width: 10),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '11000pts',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontFamily: 'Riffic',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        foreground: Paint()
                                                          ..shader =
                                                              const LinearGradient(
                                                            begin: Alignment
                                                                .center,
                                                            end: Alignment
                                                                .bottomLeft,
                                                            colors: [
                                                              Color(0xFFFF8500),
                                                              Color(0xFFFFFD00),
                                                            ],
                                                            stops: [
                                                              0.0604,
                                                              0.6432
                                                            ],
                                                          ).createShader(
                                                            const Rect.fromLTWH(
                                                                0.0,
                                                                0.0,
                                                                0.0,
                                                                14.0),
                                                          ),
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                    const Text(
                                                      'Score Global',
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                              topLeft: Radius.circular(0),
                              topRight: Radius.circular(0),
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.info_rounded,
                                color: Color(0xFF362677),
                                size: 12,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Vous êtes déjà sélectionné pour la finale',
                                style: TextStyle(
                                  color: Color(0xFF362677),
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(79),
                gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFFFFD00),
                    Color(0xFFFF8500),
                  ],
                  stops: [0.0604, 0.6432],
                  transform: GradientRotation(172.2 * 3.1415926535 / 180),
                ),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EspaceJeuxPage(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFCD9777),
                  ),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xFFCD9777),
                      ),
                      borderRadius: BorderRadius.circular(79.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.only(
                      left: 12.0,
                      right: 12.0,
                      top: 5.0,
                      bottom: 8.0,
                    ),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(79.0),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFFFFFD00),
                            Color(0xFFFF8500),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: const Center(
                        child: Text(
                          'JOUER',
                          style: TextStyle(
                              color: Color(0xFF853D1A),
                              fontSize: 24.0,
                              fontFamily: 'Riffic',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5.0,
                      right: 8.0,
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 15,
                            transform:
                                Matrix4.rotationZ(30.02 * 3.1415926535 / 180),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 2.0),
                          Container(
                            width: 10,
                            height: 18,
                            transform:
                                Matrix4.rotationZ(20.3 * 3.1415926535 / 180),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
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
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
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
                            padding: const EdgeInsets.symmetric(horizontal: 16),
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

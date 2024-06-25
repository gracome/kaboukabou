import 'package:flutter/material.dart';
import 'package:kaboukabou/reglements_page.dart';
import 'package:url_launcher/url_launcher.dart';

class LotsPage extends StatefulWidget {
  @override
  _LotsPageState createState() => _LotsPageState();
}

class _LotsPageState extends State<LotsPage> {
  int selectedButtonIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.01, 1.0],
            colors: [
              Color(0xFF6341D8),
              Color(0xFF6341D8),
              Color(0xFF362677),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              Center(
                child: Image.asset(
                  'assets/images/Logo-KABOU-KABOU.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              
              Card(
                elevation: 0,
                color: Colors.transparent.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                 
                ),
                shadowColor: const Color(0xFFD8D6E0).withOpacity(0.7),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '50.000 Fcfa',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xFFDBD0FF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Riffic',
                                  ),
                                ),
                                Text(
                                  'Gain journalier à partager par 5',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFDBD0FF),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/50K-NEW.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 0,
                color: Colors.transparent.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                shadowColor: const Color(0xFFD8D6E0).withOpacity(0.7),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '100.000 Fcfa',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xFFDBD0FF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Riffic',
                                  ),
                                ),
                                Text(
                                  'Gain bi-hebdomadaire',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFDBD0FF),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/50K-NEW.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 0,
                color: Colors.transparent.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                 shadowColor: const Color(0xFFD8D6E0).withOpacity(0.7),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                   
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1.000.000 Fcfa',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0xFFDBD0FF),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Riffic',
                                  ),
                                ),
                                Text(
                                  'Gain finale par le super gagnant',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFDBD0FF),
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/50K-NEW.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedButtonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4), // Ajouter un padding
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedButtonIndex == 0
                              ? Colors.white
                              : Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: selectedButtonIndex == 0
                            ? Colors.white
                            : const Color(0xFFdbd0ff),
                        radius: 5,
                        foregroundColor: selectedButtonIndex == 0
                            ? Colors.white
                            : Colors.transparent,
                        child: Container(
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedButtonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4), // Ajouter un padding
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedButtonIndex == 1
                              ? Colors.white
                              : Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: selectedButtonIndex == 1
                            ? Colors.white
                            : const Color(0xFFdbd0ff),
                        radius: 5,
                        foregroundColor: selectedButtonIndex == 1
                            ? Colors.white
                            : Colors.transparent,
                        child: Container(
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedButtonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedButtonIndex == 2
                              ? Colors.white
                              : Colors.transparent,
                          width: 1,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: selectedButtonIndex == 2
                            ? Colors.white
                            : const Color(0xFFdbd0ff),
                        radius: 5,
                        foregroundColor: selectedButtonIndex == 2
                            ? Colors.white
                            : Colors.transparent,
                        child: Container(
                          width: 15,
                          height: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Lots à gagner',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Riffic',
                            color: Color(0xFF362677),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(79),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFFF8500),
                              Color(0xFFFFFD00),
                            ],
                            stops: [0.0604, 0.6432],
                            transform:
                                GradientRotation(172.2 * 3.1415926535 / 180),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReglementsPage(),
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
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
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
                                right: 10.0,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 10,
                                      height: 15,
                                      transform: Matrix4.rotationZ(
                                          65.02 * 3.1415926535 / 180),
                                      decoration:  BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(500)
                                      ),
                                    ),
                                    const SizedBox(width: 2.0),
                                    Container(
                                      width: 10,
                                      height: 18,
                                      transform: Matrix4.rotationZ(
                                          20.3 * 3.1415926535 / 180),
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
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 60,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        launch('https://example.com');
                      },
                      child: const Text(
                        'Politiques de confidentialité ',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launch('https://example.com');
                      },
                      child: const Text(
                        'Kamgoko',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launch('https://example.com');
                      },
                      child: const Text(
                        'Autres',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

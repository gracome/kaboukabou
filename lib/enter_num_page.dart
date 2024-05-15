import 'package:flutter/material.dart';
import 'package:kaboukabou/about_page.dart';
import 'package:kaboukabou/otp_page.dart';
import 'package:url_launcher/url_launcher.dart';

class EnterNumPage extends StatelessWidget {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            Center(
              child: Image.asset(
                'assets/images/Logo-KABOU-KABOU.png',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Entrer votre numéro de téléphone',
                        style: TextStyle(
                            color: Color(0xFFDBD0FF),
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Riffic'),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFDBD0FF),
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFDBD0FF),
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFDBD0FF),
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        style: const TextStyle(color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Rassurer vous que le numéro soit enregistrer à votre nom.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AboutPage(),
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
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Color(0xFFFD2A15),
                                          Color(0xFFAF0000),
                                        ],
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: const Center(
                                      child: Text(
                                        'Annuler',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontFamily: 'Riffic',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8.38,
                                    right: 8.0,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 7.53,
                                          height: 12.44,
                                          transform: Matrix4.rotationZ(
                                              30.02 * 3.1415926535 / 180),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 2.0),
                                        Container(
                                          width: 8.18,
                                          height: 8.87,
                                          transform: Matrix4.rotationZ(
                                              14.3 * 3.1415926535 / 180),
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
                          const SizedBox(width: 16),
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OtpPage(),
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
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: const Center(
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                            color: Color(0xFF853D1A),
                                            fontSize: 24.0,
                                            fontFamily: 'Riffic',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 8.0,
                                    right: 8.0,
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 7.53,
                                          height: 12.44,
                                          transform: Matrix4.rotationZ(
                                              30.02 * 3.1415926535 / 180),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 4.0),
                                        Container(
                                          width: 8.18,
                                          height: 8.87,
                                          transform: Matrix4.rotationZ(
                                              14.3 * 3.1415926535 / 180),
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
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
    );
  }
}

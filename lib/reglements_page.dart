import 'package:flutter/material.dart';
import 'package:kaboukabou/enter_num_page.dart';
import 'package:url_launcher/url_launcher.dart';

class ReglementsPage extends StatefulWidget {
  @override
  _ReglementsPageState createState() => _ReglementsPageState();
}

class _ReglementsPageState extends State<ReglementsPage> {
  int selectedButtonIndex = 2;

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
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      'assets/images/Logo-KABOU-KABOU.png',
                      width: 200,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
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
                    padding: const EdgeInsets.all(4), 
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
                          : Color(0xFFdbd0ff),
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
                const SizedBox(width: 5),
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
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedButtonIndex = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(4), // Ajouter un padding
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
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Reglèment',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Riffic',
                          color: Color(0xFF362677),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur. Massa nulla cras amet faucibus. Diam viverra aliquet senectus arcu velit dui nunc dui. Erat pharetra ut libero nulla duis morbi neque consequat sagittis. Dui at sed diam at.Erat pharetra ut libero nulla duis morbi neque consequat sagittis. Dui at sed diam at.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF362677),
                          fontFamily: 'Montserrat',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
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
                          transform:
                              GradientRotation(172.2 * 3.1415926535 / 180),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnterNumPage(),
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
                                  'Démarrer',
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
                                    transform: Matrix4.rotationZ(
                                        30.02 * 3.1415926535 / 180),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
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
                  ],
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

import 'package:flutter/material.dart';
import 'package:kaboukabou/lots_a_gagner_page.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  int selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
             
              image: DecorationImage(
                image: AssetImage("assets/images/Group84.png"),
                fit: BoxFit.none,
              ),
            ),
           
          ),
           Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,                 
                  colors: [
                    Color(0xFF6341D8).withOpacity(0.60),
                    Color(0xFF6341D8),
                    Color(0xFF362677),
                                       
                  ],
                ),
              ),
            ),
          ),
          // Reste du contenu
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
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
                        padding: const EdgeInsets.all(4),
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
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const Center(
                          child: Text(
                            'À propos',
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
                              'Lorem ipsum dolor sit amet consectetur. Massa nulla cras amet faucibus. Diam viverra aliquet senectus arcu velit dui nunc dui. Erat pharetra ut libero nulla duis morbi neque consequat sagittis. Dui at sed diam at.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF362677),
                                fontFamily: 'Montserrat',
                              ),
                              textAlign: TextAlign.center),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(79),
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
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
                                  builder: (context) => LotsPage(),
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
                                  right: 10.0,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 10,
                                        height: 20,
                                        transform: Matrix4.rotationZ(
                                            65.02 * 3.1415926535 / 180),
                                        decoration:  BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Colors.white,
                                        borderRadius: BorderRadius.circular(30)
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
          )
        ],
      ),
    );
  }
}

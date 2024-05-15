import 'package:flutter/material.dart';

void main() {
  runApp(TestPage());
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Modal Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                    backgroundColor:
                        Colors.transparent,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF6341D8),
                                Color(0xFF362677),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(28.0),
                          ),
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(16.0),
                                    child: const Text(
                                      'Message de blocage',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Riffic',
                                        fontSize: 18.0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -25.0, 
                                    child: IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(16.0),
                                    bottomRight: Radius.circular(16.0),
                                    topLeft: Radius.circular(16.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                ),
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                     Text(
                                      "Tu as accumulé 3 mauvaises réponses, tu ne pourras pas jouer jusqu'à 18:49.Moins tu joues, moins tu accumules de points et tu perds toute chance d'être parmi les 5 gagants du jour.Continue à jouer et optimise tes chances grâce aux jetons👇.",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF362677B2).withOpacity(0.8),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
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
                                          transform: GradientRotation(
                                              172.2 * 3.1415926535 / 180),
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                            Color(0xFFCD9777),
                                          ),
                                          shape: MaterialStateProperty.all<
                                              OutlinedBorder>(
                                            RoundedRectangleBorder(
                                              side: const BorderSide(
                                                color: Color(0xFFCD9777),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(79.0),
                                            ),
                                          ),
                                          padding: MaterialStateProperty.all<
                                              EdgeInsetsGeometry>(
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
                                                borderRadius:
                                                    BorderRadius.circular(79.0),
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
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0),
                                              child: const Center(
                                                child: Text(
                                                  'Acheter des jetons',
                                                  style: TextStyle(
                                                      color: Color(0xFF853D1A),
                                                      fontSize: 16.0,
                                                      fontFamily: 'Riffic',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 5.0,
                                              right: 8.0,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 10,
                                                    height: 15,
                                                    transform:
                                                        Matrix4.rotationZ(
                                                            30.02 *
                                                                3.1415926535 /
                                                                180),
                                                    decoration:
                                                        const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 2.0),
                                                  Container(
                                                    width: 10,
                                                    height: 10,
                                                    transform:
                                                        Matrix4.rotationZ(20.3 *
                                                            3.1415926535 /
                                                            180),
                                                    decoration:
                                                        const BoxDecoration(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text('Afficher Modal'),
          ),
        ),
      ),
    );
  }
}

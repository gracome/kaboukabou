import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kaboukabou/classement2_page.dart';
import 'package:kaboukabou/failed_top_page.dart';
import 'package:kaboukabou/footer.dart';
import 'package:kaboukabou/profile_page.dart';
import 'package:kaboukabou/regles_page.dart';
import 'package:kaboukabou/top_overlay_page.dart';

void main() {
  runApp(MaterialApp(
    home: EspaceJeuxPage(),
  ));
}

class EspaceJeuxPage extends StatefulWidget {
  @override
  _EspaceJeuxPageState createState() => _EspaceJeuxPageState();
}

class _EspaceJeuxPageState extends State<EspaceJeuxPage> {
  int _selectedIndex = 0;
  bool _clicked = true;
  bool _click = false;
  bool _click_error = false;
  bool _clicked_error = true;
  bool isActionDone = false;
  String selectedTitle = '';
  String selectedContent = '';
  bool waiting = false;
  bool success = false;

  int _quantity = 1;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void toggleWaiting() {
    setState(() {
      waiting = true;
    });

    Timer(Duration(seconds: 5), () {
      setState(() {
        waiting = false;
      });
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => EspaceJeuxPage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Classement2Page()),
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 30),
        child: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Color(0xFF6341D8),
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'CULTURE',
            style: TextStyle(
              fontFamily: 'Riffic',
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          flexibleSpace: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/images/RectangleAppbar.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(top: 20, right: 8),
                child: Container(
                  width: 49,
                  height: 49,
                  transform: Matrix4.rotationZ(-0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                      transform: GradientRotation(345.05 * 3.141592 / 180),
                      colors: [
                        Color(0xFFFF59FF),
                        Color(0xFF48005E),
                      ],
                      stops: [0.0645, 1.0012],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        Container(
                          width: 39,
                          height: 39,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              transform:
                                  GradientRotation(345.05 * 3.141592 / 180),
                              colors: [
                                Color(0xFF48005E),
                                Color(0xFFFF59FF),
                              ],
                              stops: [0.0645, 1.0012],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFFFEDE9B),
                              ),
                              child: Center(
                                child: Text(
                                  success ? "15" : "10",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Riffic',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          color: Colors.white,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle.png'),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Center(
                            child: Text(
                              success
                                  ? 'En quelle année le président Yayi Boni at-il laissé la place à son sucésseur ?'
                                  : 'Qui était le maire de la commune de Sô-Ava de 2003 à 2008 ? ',
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Riffic',
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.white.withOpacity(0.9),
                          Color(0xFFF5F5F5),
                        ],
                        stops: [0.0604, 0.6432],
                        transform:
                            const GradientRotation(172.2 * 3.1415926535 / 180),
                      )),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _clicked = !_clicked;
                        Timer(Duration(seconds: 5), () {
                          setState(() {
                            _click = true;
                          });
                          showCustomSnackbar(context, 'Cool ! +5 pts ');
                        });
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _click ? Color(0xFF22A100) : Color(0xFFD3D3D3),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.only(
                          left: 4.0,
                          right: 4.0,
                          top: 0,
                          bottom: 8.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.0),
                            gradient: _clicked
                                ? RadialGradient(
                                    center: const Alignment(0.261, 1.524),
                                    radius: 38.99,
                                    colors: [
                                      Colors.white.withOpacity(0.9),
                                      Color(0xFFCED4DA),
                                    ],
                                  )
                                : null,
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 20),
                              Image.asset('assets/images/QuestionA.png'),
                              const SizedBox(width: 20),
                              Text(
                                success ? '2014' : 'Joseph Onitchango',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color:
                                      _click ? Colors.white : Color(0xFF070707),
                                  fontFamily: 'Riffic',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 25.0,
                          left: 10.0,
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 8,
                                transform:
                                    Matrix4.rotationZ(-65 * 3.1415926535 / 180),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFE7E7E7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white.withOpacity(0.9),
                        Color(0xFFF5F5F5),
                      ],
                      stops: [0.0604, 0.6432],
                      transform: GradientRotation(172.2 * 3.1415926535 / 180),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _clicked_error = !_clicked_error;
                        Timer(Duration(seconds: 5), () {
                          setState(() {
                            _click_error = true;
                            showCustomFailedSnackbar(
                                context, 'Akoba ! -5 pts ');
                          });
                        });
                      });
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        _click_error ? Color(0xFFAF0000) : Color(0xFFD3D3D3),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFD3D3D3),
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.only(
                          left: 4.0,
                          right: 4.0,
                          top: 0,
                          bottom: 8.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28.0),
                              gradient: _clicked_error
                                  ? RadialGradient(
                                      center: const Alignment(0.261, 1.524),
                                      radius: 38.99,
                                      colors: [
                                        Colors.white.withOpacity(0.9),
                                        const Color(0xFFCED4DA),
                                      ],
                                    )
                                  : null),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(width: 20),
                              Image.asset('assets/images/QuestionB.png'),
                              const SizedBox(width: 20),
                              Text(
                                success ? '2016' : 'André Oussou Todjè',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: _click_error
                                        ? Colors.white
                                        : Color(0xFF070707),
                                    fontFamily: 'Riffic'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 25.0,
                          left: 10.0,
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 8,
                                transform:
                                    Matrix4.rotationZ(-65 * 3.1415926535 / 180),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFE7E7E7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white.withOpacity(0.9),
                        Color(0xFFF5F5F5),
                      ],
                      stops: [0.0604, 0.6432],
                      transform:
                          const GradientRotation(172.2 * 3.1415926535 / 180),
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            backgroundColor: Colors.transparent,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(16.0),
                                              child: const Row(children: [
                                                Text(
                                                  'Message de blocage',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontFamily: 'Riffic',
                                                    fontSize: 24.0,
                                                  ),
                                                ),
                                              ])),
                                        ],
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(28.0),
                                            bottomRight: Radius.circular(28.0),
                                            topLeft: Radius.circular(28.0),
                                            topRight: Radius.circular(28.0),
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
                                                fontSize: 14.0,
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF362677)
                                                    .withOpacity(0.7),
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 20.0),
                                            Container(
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(79),
                                                gradient: const LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Color(0xFFFFFD00),
                                                    Color(0xFFFF8500),
                                                  ],
                                                  stops: [0.0604, 0.6432],
                                                  transform: GradientRotation(
                                                      172.2 *
                                                          3.1415926535 /
                                                          180),
                                                ),
                                              ),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                  showModalBottomSheet(
                                                    context: context,
                                                    isScrollControlled: true,
                                                    builder:
                                                        (BuildContext context) {
                                                      return OffCanvasBottomMenu(
                                                        title:
                                                            'Choix de jetons',
                                                        content: Column(
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  isActionDone =
                                                                      true;
                                                                 
                                                                  if (isActionDone) {
                                                                    selectedTitle =
                                                                        'Pack Argent';
                                                                    selectedContent =
                                                                        '100F';
                                                                  } else {
                                                                    selectedTitle =
                                                                        '';
                                                                    selectedContent =
                                                                        '';
                                                                  }
                                                                });
                                                              },
                                                              child: Material(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                                color: Colors
                                                                    .transparent,
                                                                child: Ink(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                            0xFFDBD0FF)
                                                                        .withOpacity(
                                                                            0.3),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: isActionDone
                                                                          ? const Color(
                                                                              0xFF6341D8)
                                                                          : const Color(
                                                                              0xFFDBD0FF),
                                                                      width: isActionDone
                                                                          ? 2.0
                                                                          : 1.5,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    padding: const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            16),
                                                                    child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Image.asset(
                                                                                'assets/images/jetonAgent.png',
                                                                                width: 40,
                                                                                height: 40,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                              const SizedBox(width: 20),
                                                                              Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  const SizedBox(height: 8),
                                                                                  const Text(
                                                                                    'Pack Argent',
                                                                                    style: TextStyle(
                                                                                      fontSize: 16,
                                                                                      fontFamily: 'Riffic',
                                                                                      color: Color(0xFF362677),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 3),
                                                                                  Text(
                                                                                    '15s pour répondre',
                                                                                    style: TextStyle(
                                                                                      fontSize: 14,
                                                                                      fontFamily: 'Montserrat',
                                                                                      color: Color(0xFF362677).withOpacity(0.9),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 3),
                                                                                  Text(
                                                                                    '10 questions',
                                                                                    style: TextStyle(
                                                                                      fontSize: 14,
                                                                                      fontFamily: 'Montserrat',
                                                                                      color: Color(0xFF362677).withOpacity(0.9),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 8),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              35,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(500),
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              begin: Alignment.topRight,
                                                                              end: Alignment.bottomLeft,
                                                                              colors: [
                                                                                Color(0xFF362677),
                                                                                Color(0xFF6341D8),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              const Padding(
                                                                            padding:
                                                                                EdgeInsets.symmetric(
                                                                              vertical: 8,
                                                                              horizontal: 8,
                                                                            ),
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                '100 FCFA',
                                                                                style: TextStyle(
                                                                                  color: Colors.white,
                                                                                  fontSize: 14,
                                                                                  fontFamily: 'Riffic',
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 20),
                                                            GestureDetector(
                                                              onTap: () {
                                                                setState(() {
                                                                  isActionDone =
                                                                      !isActionDone;
                                                                });
                                                              },
                                                              child: Material(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                                color: Colors
                                                                    .transparent,
                                                                child: Ink(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                            0xFFDBD0FF)
                                                                        .withOpacity(
                                                                            0.3),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: isActionDone
                                                                          ? Color(
                                                                              0xFF6341D8)
                                                                          : Color(
                                                                              0xFFDBD0FF),
                                                                      width: isActionDone
                                                                          ? 2.0
                                                                          : 1.5,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      InkWell(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16),
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        isActionDone =
                                                                            !isActionDone;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      padding: const EdgeInsets
                                                                          .symmetric(
                                                                          horizontal:
                                                                              16),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Image.asset(
                                                                                  'assets/images/jetonBronze.png',
                                                                                  width: 40,
                                                                                  height: 40,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                                const SizedBox(width: 20),
                                                                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                  const SizedBox(height: 8),
                                                                                  const Text(
                                                                                    'Pack Bronze',
                                                                                    style: TextStyle(
                                                                                      fontSize: 16,
                                                                                      fontFamily: 'Riffic',
                                                                                      color: Color(0xFF362677),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 3),
                                                                                  Text(
                                                                                    '30s pour répondre',
                                                                                    style: TextStyle(
                                                                                      fontSize: 14,
                                                                                      fontFamily: 'Montserrat',
                                                                                      color: Color(0xFF362677).withOpacity(0.9),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 3),
                                                                                  Text(
                                                                                    '20 questions',
                                                                                    style: TextStyle(
                                                                                      fontSize: 14,
                                                                                      fontFamily: 'Montserrat',
                                                                                      color: Color(0xFF362677).withOpacity(0.9),
                                                                                    ),
                                                                                  ),
                                                                                  const SizedBox(height: 8),
                                                                                ])
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            height:
                                                                                35,
                                                                            decoration:
                                                                                BoxDecoration(
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
                                                                            child:
                                                                                const Padding(
                                                                              padding: EdgeInsets.symmetric(
                                                                                vertical: 8,
                                                                                horizontal: 8,
                                                                              ),
                                                                              child: Center(
                                                                                child: Text(
                                                                                  '250 FCFA',
                                                                                  style: TextStyle(
                                                                                    color: Colors.white,
                                                                                    fontSize: 14,
                                                                                    fontFamily: 'Riffic',
                                                                                  ),
                                                                                  textAlign: TextAlign.center,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 20),
                                                            Text(
                                                              'Chaque ensemble de jetons vous garantit une expérience de jeu fluide, sans interruptions ni pénalités.',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: const Color(
                                                                          0xFF362677)
                                                                      .withOpacity(
                                                                          0.7)),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                            const SizedBox(
                                                                height: 20),
                                                            Stack(
                                                              children: [
                                                                Container(
                                                                  margin: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          16.0),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            79),
                                                                    gradient:
                                                                        const LinearGradient(
                                                                      begin: Alignment
                                                                          .centerLeft,
                                                                      end: Alignment
                                                                          .centerRight,
                                                                      colors: [
                                                                        Color(
                                                                            0xFFFFFD00),
                                                                        Color(
                                                                            0xFFFF8500),
                                                                      ],
                                                                      stops: [
                                                                        0.0604,
                                                                        0.6432
                                                                      ],
                                                                      transform: GradientRotation(172.2 *
                                                                          3.1415926535 /
                                                                          180),
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      ElevatedButton(
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
                                                                          isActionDone?
                                                                      showModalBottomSheet(
                                                                        context:
                                                                            context,
                                                                        isScrollControlled:
                                                                            true,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return OffCanvasBottomMenu(
                                                                            title:
                                                                                'Quantité de jetons',
                                                                            content:
                                                                                Column(
                                                                              children: [
                                                                                Text(
                                                                                  'Choisissez la quantité de jetons que vous souhaitez acheter',
                                                                                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, color: Color(0xFF263677).withOpacity(0.7)),
                                                                                  textAlign: TextAlign.center,
                                                                                ),
                                                                                const SizedBox(height: 20),
                                                                                GestureDetector(
                                                                                  onTap: () {
                                                                                    setState(() {
                                                                                      isActionDone = !isActionDone;
                                                                                    });
                                                                                  },
                                                                                  child: Material(
                                                                                    borderRadius: BorderRadius.circular(16),
                                                                                    color: Colors.transparent,
                                                                                    child: Ink(
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.white,
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        boxShadow: const [
                                                                                          BoxShadow(
                                                                                            color: Color(0x26000000),
                                                                                            blurRadius: 4,
                                                                                            offset: Offset(0, 1),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      child: InkWell(
                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                        child: Container(
                                                                                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                                                                                          child: Row(
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Row(
                                                                                                  children: [
                                                                                                    Image.asset(
                                                                                                      'assets/images/jetonAgent.png',
                                                                                                      width: 40,
                                                                                                      height: 40,
                                                                                                      fit: BoxFit.contain,
                                                                                                    ),
                                                                                                    const SizedBox(width: 20),
                                                                                                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                      const SizedBox(height: 8),
                                                                                                      const Text(
                                                                                                        'Pack Argent',
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 16,
                                                                                                          fontFamily: 'Riffic',
                                                                                                          color: Color(0xFF362677),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(height: 3),
                                                                                                      Text(
                                                                                                        '100 FCFA',
                                                                                                        style: TextStyle(
                                                                                                          fontSize: 14,
                                                                                                          fontWeight: FontWeight.w700,
                                                                                                          fontFamily: 'Montserrat',
                                                                                                          color: Color(0xFF362677).withOpacity(0.9),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(height: 10),
                                                                                                    ])
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                              Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                children: [
                                                                                                  GestureDetector(
                                                                                                    onTap: _increment,
                                                                                                    child: Container(
                                                                                                      padding: EdgeInsets.all(8),
                                                                                                      decoration: const BoxDecoration(
                                                                                                        color: Color(0xFF6341D8),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          topLeft: Radius.circular(800),
                                                                                                          bottomLeft: Radius.circular(800),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Icon(Icons.add, color: Colors.white),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Container(
                                                                                                    padding: EdgeInsets.all(8),
                                                                                                    color: Colors.white,
                                                                                                    child: Text(
                                                                                                      '$_quantity',
                                                                                                      style: TextStyle(color: Color(0xFF362677E5).withOpacity(0.9), fontSize: 16),
                                                                                                    ),
                                                                                                  ),
                                                                                                  GestureDetector(
                                                                                                    onTap: _decrement,
                                                                                                    child: Container(
                                                                                                      padding: EdgeInsets.all(8),
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: _quantity == 1 ? const Color(0xFFDBD0FF) : Color(0xFF6341D8),
                                                                                                        borderRadius: const BorderRadius.only(
                                                                                                          topRight: Radius.circular(800),
                                                                                                          bottomRight: Radius.circular(800),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Icon(Icons.remove, color: Colors.white),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                const SizedBox(height: 30),
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
                                                                                      stops: [
                                                                                        0.0604,
                                                                                        0.6432
                                                                                      ],
                                                                                      transform: GradientRotation(172.2 * 3.1415926535 / 180),
                                                                                    ),
                                                                                  ),
                                                                                  child: ElevatedButton(
                                                                                    onPressed: () {
                                                                                      Navigator.of(context).pop();
                                                                                      showModalBottomSheet(
                                                                                          context: context,
                                                                                          isScrollControlled: true,
                                                                                          builder: (BuildContext context) {
                                                                                            return OffCanvasBottomPaiements(
                                                                                                title: 'Paiements',
                                                                                                content: Column(
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      margin: EdgeInsets.all(16),
                                                                                                      width: double.infinity,
                                                                                                      padding: EdgeInsets.all(16),
                                                                                                      decoration: BoxDecoration(
                                                                                                        borderRadius: BorderRadius.circular(16),
                                                                                                        color: Color(0xFF6341D8),
                                                                                                      ),
                                                                                                      child: Column(
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          const Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                'Pack Argent',
                                                                                                                style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFDBD0FF)),
                                                                                                              ),
                                                                                                              Text('100 FCFA', style: TextStyle(fontFamily: 'Riffic', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFDBD0FF)))
                                                                                                            ],
                                                                                                          ),
                                                                                                          const SizedBox(
                                                                                                            height: 10,
                                                                                                          ),
                                                                                                          const Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                'Qantité',
                                                                                                                style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFDBD0FF)),
                                                                                                              ),
                                                                                                              Text('10', style: TextStyle(fontFamily: 'Riffic', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFDBD0FF)))
                                                                                                            ],
                                                                                                          ),
                                                                                                          const SizedBox(
                                                                                                            height: 20,
                                                                                                          ),
                                                                                                          Divider(
                                                                                                            color: Color(0xFFDBD0FF).withOpacity(0.5),
                                                                                                            thickness: 1.0,
                                                                                                            height: 1,
                                                                                                          ),
                                                                                                          const SizedBox(
                                                                                                            height: 10,
                                                                                                          ),
                                                                                                          const Row(
                                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                            children: [
                                                                                                              Text(
                                                                                                                'Total',
                                                                                                                style: TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFFDBD0FF)),
                                                                                                              ),
                                                                                                              Text('1000 FCFA', style: TextStyle(fontFamily: 'Riffic', fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white))
                                                                                                            ],
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    const SizedBox(
                                                                                                      height: 20,
                                                                                                    ),
                                                                                                    Container(
                                                                                                      margin: EdgeInsets.zero,
                                                                                                      width: double.infinity,
                                                                                                      color: Color(0xFFF5F1FF),
                                                                                                      height: 50,
                                                                                                      child: Row(
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        children: [
                                                                                                          Image.asset('assets/images/Logo-MTN-MoMo.png'),
                                                                                                          const SizedBox(
                                                                                                            width: 20,
                                                                                                          ),
                                                                                                          Image.asset('assets/images/Moov-Money.png')
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    const SizedBox(height: 20),
                                                                                                    Container(
                                                                                                        margin: EdgeInsets.all(16),
                                                                                                        child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                                          const Text(
                                                                                                            'Entrer votre numéro momo',
                                                                                                            style: TextStyle(color: Color(0xFF362677), fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Riffic'),
                                                                                                            textAlign: TextAlign.start,
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
                                                                                                                transform: GradientRotation(172.2 * 3.1415926535 / 180),
                                                                                                              ),
                                                                                                            ),
                                                                                                            child: ElevatedButton(
                                                                                                              onPressed: () {
                                                                                                                Navigator.of(context).pop();
                                                                                                                showModalBottomSheet(
                                                                                                                    context: context,
                                                                                                                    isScrollControlled: true,
                                                                                                                    builder: (BuildContext context) {
                                                                                                                      return TimerOffCanvasBottomPaiements();
                                                                                                                    });
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
                                                                                                                        'Payer 1000FCFA',
                                                                                                                        style: TextStyle(color: Color(0xFF853D1A), fontSize: 24.0, fontFamily: 'Riffic', fontWeight: FontWeight.bold),
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
                                                                                                                          transform: Matrix4.rotationZ(30.02 * 3.1415926535 / 180),
                                                                                                                          decoration: const BoxDecoration(
                                                                                                                            shape: BoxShape.circle,
                                                                                                                            color: Colors.white,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        const SizedBox(width: 2.0),
                                                                                                                        Container(
                                                                                                                          width: 10,
                                                                                                                          height: 18,
                                                                                                                          transform: Matrix4.rotationZ(20.3 * 3.1415926535 / 180),
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
                                                                                                          const Text(
                                                                                                            'Vous serez invité à valider votre paiement sur votre téléphone avec votre Code PIN MoMo.',
                                                                                                            style: TextStyle(color: Color(0xFF717985), fontSize: 14, fontWeight: FontWeight.w400, fontFamily: 'Montserrat', fontStyle: FontStyle.italic),
                                                                                                            textAlign: TextAlign.center,
                                                                                                          )
                                                                                                        ]))
                                                                                                  ],
                                                                                                ));
                                                                                          });
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
                                                                                              'Continuer',
                                                                                              style: TextStyle(color: Color(0xFF853D1A), fontSize: 24.0, fontFamily: 'Riffic', fontWeight: FontWeight.bold),
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
                                                                                                transform: Matrix4.rotationZ(30.02 * 3.1415926535 / 180),
                                                                                                decoration: const BoxDecoration(
                                                                                                  shape: BoxShape.circle,
                                                                                                  color: Colors.white,
                                                                                                ),
                                                                                              ),
                                                                                              const SizedBox(width: 2.0),
                                                                                              Container(
                                                                                                width: 10,
                                                                                                height: 18,
                                                                                                transform: Matrix4.rotationZ(20.3 * 3.1415926535 / 180),
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
                                                                          );
                                                                        },
                                                                      ) : null;
                                                                    },
                                                                    style:
                                                                        ButtonStyle(
                                                                      backgroundColor:
                                                                          MaterialStateProperty.all<
                                                                              Color>(
                                                                        const Color(
                                                                            0xFFCD9777),
                                                                      ),
                                                                      shape: MaterialStateProperty
                                                                          .all<
                                                                              OutlinedBorder>(
                                                                        RoundedRectangleBorder(
                                                                          side:
                                                                              const BorderSide(
                                                                            color:
                                                                                Color(0xFFCD9777),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(79.0),
                                                                        ),
                                                                      ),
                                                                      padding:
                                                                          MaterialStateProperty.all<
                                                                              EdgeInsetsGeometry>(
                                                                        const EdgeInsets
                                                                            .only(
                                                                          left:
                                                                              12.0,
                                                                          right:
                                                                              12.0,
                                                                          top:
                                                                              5.0,
                                                                          bottom:
                                                                              8.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(79.0),
                                                                            gradient:
                                                                                const LinearGradient(
                                                                              begin: Alignment.topRight,
                                                                              end: Alignment.centerRight,
                                                                              colors: [
                                                                                Color(0xFFFFFD00),
                                                                                Color(0xFFFF8500),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              vertical: 10.0),
                                                                          child:
                                                                              const Center(
                                                                            child:
                                                                                Text(
                                                                              'Continuer',
                                                                              style: TextStyle(
                                                                                color: Color(0xFF853D1A),
                                                                                fontSize: 24.0,
                                                                                fontFamily: 'Riffic',
                                                                                fontWeight: FontWeight.bold,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          top:
                                                                              5.0,
                                                                          right:
                                                                              8.0,
                                                                          child:
                                                                              Row(
                                                                            children: [
                                                                              Container(
                                                                                width: 20,
                                                                                height: 15,
                                                                                transform: Matrix4.rotationZ(30.02 * 3.1415926535 / 180),
                                                                                decoration: const BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                  color: Colors.white,
                                                                                ),
                                                                              ),
                                                                              const SizedBox(width: 2.0),
                                                                              Container(
                                                                                width: 10,
                                                                                height: 18,
                                                                                transform: Matrix4.rotationZ(20.3 * 3.1415926535 / 180),
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
                                                                if (!isActionDone)
                                                                  Positioned
                                                                      .fill(
                                                                    child:
                                                                        Container(
                                                                      color: Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              0.5),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            const SizedBox(
                                                                height: 30),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(
                                                    Color(0xFFCD9777),
                                                  ),
                                                  shape: MaterialStateProperty
                                                      .all<OutlinedBorder>(
                                                    RoundedRectangleBorder(
                                                      side: const BorderSide(
                                                        color:
                                                            Color(0xFFCD9777),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              79.0),
                                                    ),
                                                  ),
                                                  padding: MaterialStateProperty
                                                      .all<EdgeInsetsGeometry>(
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
                                                            BorderRadius
                                                                .circular(79.0),
                                                        gradient:
                                                            const LinearGradient(
                                                          begin: Alignment
                                                              .topRight,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: [
                                                            Color(0xFFFFFD00),
                                                            Color(0xFFFF8500),
                                                          ],
                                                        ),
                                                      ),
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          vertical: 8.0),
                                                      child: const Center(
                                                        child: Text(
                                                          'Acheter des jetons',
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xFF853D1A),
                                                              fontSize: 16.0,
                                                              fontFamily:
                                                                  'Riffic',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 2.0,
                                                      right: 8.0,
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            width: 10,
                                                            height: 15,
                                                            transform: Matrix4
                                                                .rotationZ(65.02 *
                                                                    3.1415926535 /
                                                                    180),
                                                            decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .rectangle,
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            500)),
                                                          ),
                                                          const SizedBox(
                                                              width: 2.0),
                                                          Container(
                                                            width: 10,
                                                            height: 10,
                                                            transform: Matrix4
                                                                .rotationZ(20.3 *
                                                                    3.1415926535 /
                                                                    180),
                                                            decoration:
                                                                const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color:
                                                                  Colors.white,
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
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFD3D3D3),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFD3D3D3),
                          ),
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.only(
                          left: 4.0,
                          right: 4.0,
                          top: 0,
                          bottom: 8.0,
                        ),
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.0),
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.white.withOpacity(0.9),
                                Color(0xFFF5F5F5),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .start, // Centrer les éléments horizontalement
                            children: [
                              const SizedBox(width: 20),
                              Image.asset('assets/images/QuestionC.png'),
                              const SizedBox(width: 20),
                              Text(
                                success ? '2006' : 'Jean Méjor Zannou',
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF070707),
                                    fontFamily: 'Riffic'),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 25.0,
                          left: 10.0,
                          child: Row(
                            children: [
                              Container(
                                width: 20,
                                height: 8,
                                transform:
                                    Matrix4.rotationZ(-65 * 3.1415926535 / 180),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFE7E7E7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ClipOvale.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Column(children: [
                                  Card(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                    ),
                                    color: Color(0xFFDBD0FF),
                                    child: SizedBox(
                                      width: 76,
                                      height: 76,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(height: 10),
                                          Image.asset(
                                            'assets/images/Attribution.png',
                                            width: 28,
                                            height: 28,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            '1222',
                                            style: TextStyle(
                                                fontFamily: 'Riffic',
                                                fontSize: 14,
                                                color: Color(0xFF6341D8)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Nombre de points",
                                    style: TextStyle(
                                        fontFamily: 'Riffic',
                                        fontSize: 14,
                                        color: Colors.white),
                                    softWrap: true,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )
                                ]),
                              ),
                              Expanded(
                                child: Column(children: [
                                  Card(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                    ),
                                    color: Color(0xFFDBD0FF),
                                    child: SizedBox(
                                      width: 76,
                                      height: 76,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(height: 10),
                                          Image.asset(
                                            'assets/images/Icon.png',
                                            width: 28,
                                            height: 28,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            '102e',
                                            style: TextStyle(
                                                fontFamily: 'Riffic',
                                                fontSize: 14,
                                                color: Color(0xFF6341D8)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Rang",
                                    style: TextStyle(
                                        fontFamily: 'Riffic',
                                        fontSize: 14,
                                        color: Colors.white),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 20),
                                ]),
                              ),
                              Expanded(
                                child: Column(children: [
                                  Card(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(18),
                                        topRight: Radius.circular(18),
                                        bottomLeft: Radius.circular(18),
                                        bottomRight: Radius.circular(18),
                                      ),
                                    ),
                                    color: Color(0xFFDBD0FF),
                                    child: SizedBox(
                                      width: 76,
                                      height: 76,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const SizedBox(height: 10),
                                          Image.asset(
                                            'assets/images/jetons.png',
                                            width: 28,
                                            height: 28,
                                          ),
                                          const SizedBox(height: 10),
                                          const Text(
                                            '36',
                                            style: TextStyle(
                                                fontFamily: 'Riffic',
                                                fontSize: 14,
                                                color: Color(0xFF6341D8)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Jetons Restants",
                                    style: TextStyle(
                                        fontFamily: 'Riffic',
                                        fontSize: 14,
                                        color: Colors.white),
                                    softWrap: true,
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                  )
                                ]),
                              ),
                              Expanded(
                                  child: Column(children: [
                                Card(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18),
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18),
                                    ),
                                  ),
                                  color: const Color(0xFFDBD0FF),
                                  child: SizedBox(
                                    width: 76,
                                    height: 76,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(height: 10),
                                        Image.asset(
                                          'assets/images/mauvaise_reponse.png',
                                          width: 28,
                                          height: 28,
                                        ),
                                        const SizedBox(height: 10),
                                        const Text(
                                          '1222',
                                          style: TextStyle(
                                              fontFamily: 'Riffic',
                                              fontSize: 14,
                                              color: Color(0xFF6341D8)),
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Mauvais réponses",
                                  style: TextStyle(
                                      fontFamily: 'Riffic',
                                      fontSize: 14,
                                      color: Colors.white),
                                  softWrap: true,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                )
                              ])),
                              const SizedBox(height: 10),
                            ],
                          ),
                          const SizedBox(height: 150),
                        ],
                      ),
                    ),
                  ),
                ))
                // Expanded(
                //   child: SingleChildScrollView(
                //     child: Container(
                //       decoration: const BoxDecoration(
                //         image: DecorationImage(
                //           image: AssetImage('assets/images/ClipOvale.png'),
                //           fit: BoxFit.cover,
                //         ),
                //       ),
                //       child: Padding(
                //         padding: EdgeInsets.all(10.0),
                //         child: Column(
                //           children: [
                //             Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //               children: [
                //                 Expanded(
                //                   child: Column(children: [
                //                     Card(
                //                       shape: const RoundedRectangleBorder(
                //                         borderRadius: BorderRadius.only(
                //                           topLeft: Radius.circular(18),
                //                           topRight: Radius.circular(18),
                //                           bottomLeft: Radius.circular(18),
                //                           bottomRight: Radius.circular(18),
                //                         ),
                //                       ),
                //                       color: Color(0xFFDBD0FF),
                //                       child: SizedBox(
                //                         width: 76,
                //                         height: 76,
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.center,
                //                           children: [
                //                             const SizedBox(height: 10),
                //                             Image.asset(
                //                               'assets/images/Attribution.png',
                //                               width: 28,
                //                               height: 28,
                //                             ),
                //                             const SizedBox(height: 10),
                //                             const Text(
                //                               '1222',
                //                               style: TextStyle(
                //                                   fontFamily: 'Riffic',
                //                                   fontSize: 14,
                //                                   color: Color(0xFF6341D8)),
                //                             )
                //                           ],
                //                         ),
                //                       ),
                //                     ),
                //                     const SizedBox(height: 10),
                //                     const Text(
                //                       "Nombre de points",
                //                       style: TextStyle(
                //                           fontFamily: 'Riffic',
                //                           fontSize: 14,
                //                           color: Colors.white),
                //                       softWrap: true,
                //                       maxLines: 2,
                //                       textAlign: TextAlign.center,
                //                     )
                //                   ]),
                //                 ),
                //                 Expanded(
                //                   child: Column(children: [
                //                     Card(
                //                       shape: const RoundedRectangleBorder(
                //                         borderRadius: BorderRadius.only(
                //                           topLeft: Radius.circular(18),
                //                           topRight: Radius.circular(18),
                //                           bottomLeft: Radius.circular(18),
                //                           bottomRight: Radius.circular(18),
                //                         ),
                //                       ),
                //                       color: Color(0xFFDBD0FF),
                //                       child: SizedBox(
                //                         width: 76,
                //                         height: 76,
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.center,
                //                           children: [
                //                             const SizedBox(height: 10),
                //                             Image.asset(
                //                               'assets/images/Icon.png',
                //                               width: 28,
                //                               height: 28,
                //                             ),
                //                             const SizedBox(height: 10),
                //                             const Text(
                //                               '102e',
                //                               style: TextStyle(
                //                                   fontFamily: 'Riffic',
                //                                   fontSize: 14,
                //                                   color: Color(0xFF6341D8)),
                //                             )
                //                           ],
                //                         ),
                //                       ),
                //                     ),
                //                     const SizedBox(height: 10),
                //                     const Text(
                //                       "Rang",
                //                       style: TextStyle(
                //                           fontFamily: 'Riffic',
                //                           fontSize: 14,
                //                           color: Colors.white),
                //                       softWrap: true,
                //                       maxLines: 2,
                //                       textAlign: TextAlign.center,
                //                     )
                //                   ]),
                //                 ),
                //                 Expanded(
                //                   child: Column(children: [
                //                     Card(
                //                       shape: const RoundedRectangleBorder(
                //                         borderRadius: BorderRadius.only(
                //                           topLeft: Radius.circular(18),
                //                           topRight: Radius.circular(18),
                //                           bottomLeft: Radius.circular(18),
                //                           bottomRight: Radius.circular(18),
                //                         ),
                //                       ),
                //                       color: Color(0xFFDBD0FF),
                //                       child: SizedBox(
                //                         width: 76,
                //                         height: 76,
                //                         child: Column(
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.center,
                //                           children: [
                //                             const SizedBox(height: 10),
                //                             Image.asset(
                //                               'assets/images/jetons.png',
                //                               width: 28,
                //                               height: 28,
                //                             ),
                //                             const SizedBox(height: 10),
                //                             const Text(
                //                               '36',
                //                               style: TextStyle(
                //                                   fontFamily: 'Riffic',
                //                                   fontSize: 14,
                //                                   color: Color(0xFF6341D8)),
                //                             )
                //                           ],
                //                         ),
                //                       ),
                //                     ),
                //                     const SizedBox(height: 10),
                //                     const Text(
                //                       "Jetons Restants",
                //                       style: TextStyle(
                //                           fontFamily: 'Riffic',
                //                           fontSize: 14,
                //                           color: Colors.white),
                //                       softWrap: true,
                //                       maxLines: 2,
                //                       textAlign: TextAlign.center,
                //                     )
                //                   ]),
                //                 ),
                //                 Expanded(
                //                     child: Column(children: [
                //                   Card(
                //                     shape: const RoundedRectangleBorder(
                //                       borderRadius: BorderRadius.only(
                //                         topLeft: Radius.circular(18),
                //                         topRight: Radius.circular(18),
                //                         bottomLeft: Radius.circular(18),
                //                         bottomRight: Radius.circular(18),
                //                       ),
                //                     ),
                //                     color: const Color(0xFFDBD0FF),
                //                     child: SizedBox(
                //                       width: 76,
                //                       height: 76,
                //                       child: Column(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.center,
                //                         children: [
                //                           const SizedBox(height: 10),
                //                           Image.asset(
                //                             'assets/images/mauvaise_reponse.png',
                //                             width: 28,
                //                             height: 28,
                //                           ),
                //                           const SizedBox(height: 10),
                //                           const Text(
                //                             '1222',
                //                             style: TextStyle(
                //                                 fontFamily: 'Riffic',
                //                                 fontSize: 14,
                //                                 color: Color(0xFF6341D8)),
                //                             textAlign: TextAlign.center,
                //                           )
                //                         ],
                //                       ),
                //                     ),
                //                   ),
                //                   const SizedBox(height: 10),
                //                   const Text(
                //                     "Mauvais réponses",
                //                     style: TextStyle(
                //                         fontFamily: 'Riffic',
                //                         fontSize: 14,
                //                         color: Colors.white),
                //                     softWrap: true,
                //                     maxLines: 2,
                //                     textAlign: TextAlign.center,
                //                   )
                //                 ])),
                //                 const SizedBox(height: 10),
                //               ],
                //             ),
                //             SizedBox(height: 96),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
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
      height: MediaQuery.of(context).size.height * 0.50,
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

class OffCanvasBottomPaiements extends StatelessWidget {
  final String title;
  final Widget content;

  const OffCanvasBottomPaiements({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
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
              child: Container(
                child: content,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimerOffCanvasBottomPaiements extends StatefulWidget {
  @override
  _TimerOffCanvasBottomPaiementsState createState() =>
      _TimerOffCanvasBottomPaiementsState();
}

class _TimerOffCanvasBottomPaiementsState
    extends State<TimerOffCanvasBottomPaiements> {
  bool waiting = true;
  bool echec = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      setState(() {
        waiting = false;
        Timer(Duration(seconds: 5), () {
          setState(() {
            echec = true;
          });
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return OffCanvasBottomPaiements(
      title: '',
      content: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xFFDBD0FF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                waiting
                    ? Image.asset('assets/images/Animation-Waiting.png')
                    : echec
                        ? Image.asset('assets/images/Echec.png')
                        : Image.asset('assets/images/Succès.png')
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                waiting
                    ? const Text(
                        'Attente de confirmation',
                        style: TextStyle(
                          color: Color(0xFF362677),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Riffic',
                        ),
                        textAlign: TextAlign.center,
                      )
                    : echec
                        ? const Text(
                            'Echec de paiement',
                            style: TextStyle(
                              color: Color(0xFF362677),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Riffic',
                            ),
                            textAlign: TextAlign.center,
                          )
                        : const Text(
                            'Paiement réussi',
                            style: TextStyle(
                              color: Color(0xFF362677),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Riffic',
                            ),
                            textAlign: TextAlign.center,
                          ),
                const SizedBox(height: 10),
                waiting
                    ? const Text(
                        'Veuillez entrer votre code de confirmation Mobile Money pour valider le paiement.',
                        style: TextStyle(
                          color: Color(0xFF717985),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Montserrat',
                        ),
                        textAlign: TextAlign.start,
                      )
                    : echec
                        ? const Text(
                            'Votre paiement de 1000 FCFA a été effectué avec succès',
                            style: TextStyle(
                              color: Color(0xFF717985),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.start,
                          )
                        : const Text(
                            'votre paiement de 1000 FCFA n’a pas été éffectué  ',
                            style: TextStyle(
                              color: Color(0xFF717985),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat',
                            ),
                            textAlign: TextAlign.start,
                          ),
                const SizedBox(height: 10),
                if (!waiting)
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16.0),
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
                        Navigator.of(context).pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                                backgroundColor: Colors.transparent,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      right: 0,
                                      child: Image.asset(
                                        'assets/images/party.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          top: 150, bottom: 200),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF6341D8),
                                            Color(0xFF362677),
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(28.0),
                                      ),
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(16.0),
                                                child: const Text(
                                                  'Félicitations',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontFamily: 'Riffic',
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            padding: EdgeInsets.all(16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Text(
                                                  "Vous avez acheté des jetons de 1000 FCFA donnant droit à 100 questions avec un temps de réponse de 15 secondes chacune.",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF362677)
                                                        .withOpacity(0.7),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(height: 10.0),
                                                Text(
                                                  "Cliquer sur “Ok” pour reprendre votre partie",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontFamily: 'Montserrat',
                                                    color: Color(0xFF362677)
                                                        .withOpacity(0.7),
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                                SizedBox(height: 10.0),
                                                Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 16.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            79),
                                                    gradient:
                                                        const LinearGradient(
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                      colors: [
                                                        Color(0xFFFFFD00),
                                                        Color(0xFFFF8500),
                                                      ],
                                                      stops: [0.0604, 0.6432],
                                                      transform:
                                                          GradientRotation(
                                                              172.2 *
                                                                  3.1415926535 /
                                                                  180),
                                                    ),
                                                  ),
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all<Color>(
                                                        Color(0xFFCD9777),
                                                      ),
                                                      shape: MaterialStateProperty
                                                          .all<OutlinedBorder>(
                                                        RoundedRectangleBorder(
                                                          side:
                                                              const BorderSide(
                                                            color: Color(
                                                                0xFFCD9777),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      79.0),
                                                        ),
                                                      ),
                                                      padding:
                                                          MaterialStateProperty.all<
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
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        79.0),
                                                            gradient:
                                                                const LinearGradient(
                                                              begin: Alignment
                                                                  .topRight,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color(
                                                                    0xFFFFFD00),
                                                                Color(
                                                                    0xFFFF8500),
                                                              ],
                                                            ),
                                                          ),
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical:
                                                                      10.0),
                                                          child: const Center(
                                                            child: Text(
                                                              'OK',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF853D1A),
                                                                fontSize: 16.0,
                                                                fontFamily:
                                                                    'Riffic',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
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
                                                                transform: Matrix4
                                                                    .rotationZ(
                                                                        65.02 *
                                                                            3.1415926535 /
                                                                            180),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .rectangle,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              500),
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  width: 2.0),
                                                              Container(
                                                                width: 10,
                                                                height: 10,
                                                                transform: Matrix4
                                                                    .rotationZ(20.3 *
                                                                        3.1415926535 /
                                                                        180),
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  color: Colors
                                                                      .white,
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
                                    Positioned(
                                      top: 138.0,
                                      right: 0.0,
                                      child: Container(
                                        padding: const EdgeInsets.all(8),
                                        width: 36,
                                        height: 36,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF7A02D),
                                          borderRadius:
                                              BorderRadius.circular(500),
                                        ),
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF562C2C),
                                            borderRadius:
                                                BorderRadius.circular(500),
                                          ),
                                          child: Center(
                                            child: IconButton(
                                              icon: Icon(Icons.close),
                                              color: Colors.white,
                                              padding: EdgeInsets.zero,
                                              constraints: BoxConstraints(),
                                              iconSize:
                                                  16, // Ajuster la taille de l'icône si nécessaire
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFCD9777),
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
                            child: Center(
                              child: Text(
                                echec ? 'Réessayer' : 'Terminer',
                                style: const TextStyle(
                                  color: Color(0xFF853D1A),
                                  fontSize: 24.0,
                                  fontFamily: 'Riffic',
                                  fontWeight: FontWeight.bold,
                                ),
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
        ],
      ),
    );
  }
}

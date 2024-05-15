import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
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
                 Navigator.pop(context);
              },
            ),
            const Text(
              'Aide/FAQ',
              style: TextStyle(
                fontFamily: 'Riffic',
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Image.asset(
              'assets/images/Group100.png',
              width: 32,
              height: 32,
            ),
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
        child: ListView(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF6253D2),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Colors.white),
                          const SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.7)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      child: const Text(
                        'Rechercher dans nos ressouces d’aide et de support pour obtenir de l’aide',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ExpansionPanelListExample(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  Item({
    required this.title,
    required this.body,
    this.isExpanded = false,
  });

  String title;
  String body;
  bool isExpanded;
}

List<Item> generateItems() {
  List<String> titles = [
    'Comment récupérer mes gains ?',
    'Comment acheter des jetons ?',
    'Comment faire parti des gagnants du jour ?',
    'J’ai acheter des jetons mais je n’ai pas de question ',
    'Comment activer un jeu ?',
    'Quels sont les types de jetons que vous proposer ?'
  ];

  List<String> bodies = [
    'Pour recupérer vos gains veuillez vous rendre à l’agence Kamgoko et vous munir de votre pièce d’identité.',
    'Pour recupérer vos gains veuillez vous rendre à l’agence Kamgoko et vous munir de votre pièce d’identité.',
    'Pour recupérer vos gains veuillez vous rendre à l’agence Kamgoko et vous munir de votre pièce d’identité.',
    'Pour recupérer vos gains veuillez vous rendre à l’agence Kamgoko et vous munir de votre pièce d’identité.',
    'Pour recupérer vos gains veuillez vous rendre à l’agence Kamgoko et vous munir de votre pièce d’identité.',
    'Pour recupérer vos gains veuillez vous rendre à l’agence Kamgoko et vous munir de votre pièce d’identité.'
  ];

  List<Item> items = [];
  for (int i = 0; i < titles.length; i++) {
    items.add(Item(
      title: titles[i],
      body: bodies[i],
    ));
  }
  return items;
}

class ExpansionPanelListExample extends StatefulWidget {
  const ExpansionPanelListExample({super.key});

  @override
  State<ExpansionPanelListExample> createState() =>
      _ExpansionPanelListExampleState();
}

class _ExpansionPanelListExampleState extends State<ExpansionPanelListExample> {
  final List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: _data.map<Widget>((Item item) {
            return Card(
                elevation: 0,
                color: const Color(0xFFDBD0FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.only(bottom: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: ExpansionTile(
                    title: Text(
                      item.title,
                      style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Riffic'),
                    ),
                    backgroundColor: Color(0xFFDBD0FF),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    collapsedBackgroundColor: Color(0xFFDBD0FF),
                    collapsedTextColor: Color(0xFF362677),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          item.body,
                          style: const TextStyle(
                              color: Color(0xFF362677),
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ));
          }).toList(),
        ),
      ),
    );
  }
}

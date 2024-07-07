// ignore_for_file: camel_case_types, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:fruitful2/app_page.dart';

import 'package:fruitful2/help.dart';

class flowers extends StatefulWidget {
  const flowers({Key? key}) : super(key: key);

  @override
  State<flowers> createState() => _flowersState();
}

class _flowersState extends State<flowers> {
  // ignore: prefer_final_fields
  TextEditingController _searchController = TextEditingController();
  List<String> flowers = [
    "Baladi rose",
    "Pink",
    "Cactus Flower",
    "pomegranate flower",
    "berries",
    "Lotus flower",
    "henna flower",
    "sunflower flower",
    "carnation flower",
    "mint flower",
  ];

  late List<String> filteredFlowers = [];

  @override
  void initState() {
    super.initState();
    filteredFlowers = flowers;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void filterFlowers(String query) {
    setState(() {
      filteredFlowers = flowers.where((flower) {
        return flower.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext) {
                  return const help();
                }),
              );
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 9,
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          const Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'ابحث عن الزهور...',
                border: OutlineInputBorder(),
              ),
              onChanged: filterFlowers,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: filteredFlowers.map((flower) {
                  return GestureDetector(
                    onTap: () {
                      if (Text == "الورد البلدي") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "البنفسج") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "زهرة الرمان") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "التوت") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "زهرة اللوتس") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "زهرة الحناء") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "زهرة دوار الشمس") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "زهرة القرنفل") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "زهرة النعناع") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, offset: Offset(2, 2)),
                        ],
                      ),
                      child: Text(
                        flower,
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class plants extends StatefulWidget {
  const plants({super.key});

  @override
  State<plants> createState() => _plantsState();
}

class _plantsState extends State<plants> {
  TextEditingController _searchController = TextEditingController();
  List<String> plants = [
    "carrots",
    "Alkhas",
    "potato",
    "Option",
    "Pepper",
    "onions",
    "tomatoes",
    "cabbage",
    "Beans",
    "watercress",
    "clover",
    "turnip",
  ];

  late List<String> filteredPlants;

  @override
  void initState() {
    super.initState();
    filteredPlants = plants;
  }

  void filterPlants(String query) {
    setState(() {
      filteredPlants = plants.where((plant) {
        return plant.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return const help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 9,
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          const Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              textDirection: TextDirection.rtl,
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'ابحث عن النباتات...',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              textInputAction:
                  TextInputAction.search, // Specify text input action
              onChanged: filterPlants,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: filteredPlants.map((plant) {
                  return GestureDetector(
                    onTap: () {
                      if (Text == "الجزر") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الخص") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "البطاطس") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الخيار") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الفلفل") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "البصل") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الطماطم") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الكرنب") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الفول") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "الجرجير") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "البرسيم") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "اللفت") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, offset: Offset(2, 2)),
                        ],
                      ),
                      child: Text(
                        plant,
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class fruits extends StatefulWidget {
  const fruits({super.key});

  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  TextEditingController _searchController = TextEditingController();
  List<String> fruits = [
    "تفاح",
    "كمثرى",
    "يوسفي",
    "موز",
    "فراولة",
    "مانجو",
    "خوخ",
    "برتقال",
    "كيوي",
    "اناناس",
    "رمان",
    "مشمش",
    "بطيخ",
    "تمر",
  ];

  late List<String> filteredFruits;

  @override
  void initState() {
    super.initState();
    filteredFruits = fruits;
  }

  void filterFruits(String query) {
    setState(() {
      filteredFruits = fruits.where((fruit) {
        return fruit.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return const help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 9,
          ),
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          const Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
            ),
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              textDirection: TextDirection.rtl,
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'ابحث عن الفواكه...',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
              textInputAction:
                  TextInputAction.search, // Specify text input action
              onChanged: filterFruits,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: filteredFruits.map((fruit) {
                  return GestureDetector(
                    onTap: () {
                      if (Text == "تفاح") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "كمثرى") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "يوسفي") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "موز") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "فراوله") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "مانجو") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "خوخ") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "برتقال") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "كيوي") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "اناناس") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "رمان") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "مشمش") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "بطيخ") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      } else if (Text == "تمر") {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext) {
                          return app_page();
                        }));
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      alignment: Alignment.center,
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen[600],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, offset: Offset(2, 2)),
                        ],
                      ),
                      child: Text(
                        fruit,
                        style:
                            const TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

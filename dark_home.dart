import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fruitful2/appel.dart';
import 'package:fruitful2/bazengan.dart';
import 'package:fruitful2/darkmode/dark_camera.dart';
import 'package:fruitful2/darkmode/dark_chat.dart';
import 'package:fruitful2/darkmode/dark_communication.dart';
import 'package:fruitful2/darkmode/dark_date.dart';
import 'package:fruitful2/darkmode/dark_dictionry.dart';
import 'package:fruitful2/darkmode/dark_hadeqa.dart';
import 'package:fruitful2/darkmode/dark_help.dart';
import 'package:fruitful2/darkmode/dark_modes.dart';
import 'package:fruitful2/felfel.dart';
import 'package:fruitful2/kear.dart';
import 'package:fruitful2/kear_dis.dart';
import 'package:fruitful2/kosa.dart';
import 'package:fruitful2/kosa_dis.dart';
import 'package:fruitful2/tomato_analysis.dart';

class dark_home extends StatefulWidget {
  const dark_home({super.key});

  @override
  State<dark_home> createState() => _dark_homeState();
}

class _dark_homeState extends State<dark_home> {
  final List<String> images = [
    'assets/images/mango.png',
    'assets/images/orange.png',
    'assets/images/sher.png',
    'assets/images/apple.png',
    'assets/images/botato.png',
  ];
  int _currentIndex = 0;
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF132213),
        body: Stack(
          children: [
            Positioned(
                top: MediaQuery.of(context).size.height *
                    0.43, // Adjust vertical position

                right: 0,
                left: 0, // Adjust horizontal position
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: CarouselSlider(
                        items: images.map((image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: 180,
                                margin: EdgeInsets.symmetric(horizontal: 0.0),
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  image,
                                  fit: BoxFit.scaleDown,
                                ),
                              );
                            },
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 7 / 9,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                        carouselController: _carouselController,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images.map((image) {
                        int index = images.indexOf(image);
                        return GestureDetector(
                          onTap: () {
                            _carouselController.animateToPage(index);
                          },
                          child: Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == index
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                )),
            Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/icon vector (1).png",
                  width: MediaQuery.of(context).size.width,
                )),
            Positioned(
                top: 0,
                child: Image.asset(
                  "assets/images/top vector (1).png",
                  width: MediaQuery.of(context).size.width,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.45,
                child: Image.asset(
                  "assets/images/frame-3.png",
                  width: MediaQuery.of(context).size.width * 0.13,
                  color: Color(0XFF95BD92),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.05,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return dark_help();
                    }));
                  },
                  child: Image.asset(
                    "assets/images/frame-1.png",
                    width: MediaQuery.of(context).size.width * 0.07,
                    color: Color(0XFF95BD92),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.05,
                child: Image.asset(
                  "assets/images/frame-2.png",
                  width: MediaQuery.of(context).size.width * 0.07,
                  color: Color(0XFF95BD92),
                )),
            Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  "assets/images/frame.png",
                  width: MediaQuery.of(context).size.width * 0.7,
                )),
            Positioned(
                bottom: 10,
                right: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return dark_chat();
                    }));
                  },
                  child: Image.asset(
                    "assets/images/robot.png",
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: MediaQuery.of(context).size.width * 0.12,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (BuildContext) {
                                return dark_hadeqa();
                              }));
                            },
                            child: Image.asset(
                              "assets/images/myfarm (1).png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "حديقتي",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext) {
                              return dark_date();
                            }));
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/date.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "التقويم",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showdialoge(context);
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/plant treatment.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "تشخيص",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showIconDialog(context);
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/camera top.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "اكتشف",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.32,
                left: MediaQuery.of(context).size.width * 0.12,
                child: Row(
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext) {
                              return dark_modes();
                            }));
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/dark mod.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "النمط",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext) {
                              return dark_communication();
                            }));
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/massge.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "التواصل",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext) {
                              return dark_chat();
                            }));
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/chat.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "المحادثة",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (BuildContext) {
                              return dark_dictionry();
                            }));
                          },
                          child: Container(
                            child: Image.asset(
                              "assets/images/dectiionary.png",
                              width: MediaQuery.of(context).size.width * 0.14,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "القاموس",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ));
  }

  void _showIconDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          title: Text(
            '',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return kosa_dis();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/كوسه.png"),
                        Text(
                          "اكتشف الكوسه",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return felfel();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/الفلفل.png"),
                        Text(
                          " اكتشف الفلفل",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return kear_dis();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/خيار.png"),
                        Text(
                          " اكتشف الخيار",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showdialoge(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          title: Text(
            '  ',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return tomato_ana();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/طماطم.png"),
                        Text(
                          "تشخيص الطماطم",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return kear_ana();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/خيار.png"),
                        Text("تشخيص الخيار",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return kosa_ana();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/كوسه.png"),
                        Text("تشخيص الكوسه",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return bazengan_ana();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/بذنجان.png"),
                        Text("تشخيص البذينجان",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext) {
                      return apple_ana();
                    }));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/نفاح.png"),
                        Text("تشخيص التفاح",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

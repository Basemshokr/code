// ignore_for_file: camel_case_types, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class info extends StatelessWidget {
  const info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            const Spacer(
              flex: 1,
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
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext) {
                    return const info();
                  }));
                },
                icon: Icon(
                  Icons.help,
                  color: Colors.lightGreen[600],
                )),
            const Spacer(
              flex: 1,
            )
          ],
        ),
        body: Center(
          child: Text(
            "we are fruitful team :) ",
            style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[600]),
          ),
        ));
  }
}
//////////////////////////////////////////////////////

class farm extends StatefulWidget {
  const farm({super.key});

  @override
  State<farm> createState() => _farmState();
}

class _farmState extends State<farm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Spacer(
            flex: 1,
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
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const info();
                }));
              },
              icon: Icon(
                Icons.help,
                color: Colors.lightGreen[600],
              )),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(
                  child: Image.asset(
                "assets/images/mango.png",
              )),
            ),
            Container(
              child: Center(
                child: Text(
                  "مانجو",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[600]),
                ),
              ),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(child: Image.asset("assets/images/sher.png")),
            ),
            Container(
              child: Center(
                child: Text(
                  "شعير",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[600]),
                ),
              ),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(child: Image.asset("assets/images/orange.png")),
            ),
            Container(
              child: Center(
                child: Text(
                  "برتقال",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[600]),
                ),
              ),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(child: Image.asset("assets/images/botato.png")),
            ),
            Container(
              child: Center(
                child: Text(
                  "بطاطس",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[600]),
                ),
              ),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Center(child: Image.asset("assets/images/apple.png")),
            ),
            Container(
              child: Center(
                child: Text(
                  "تفاح",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreen[600]),
                ),
              ),
            ),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 255, 255),
              child: const Center(
                child: Text(
                  'Item 3',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//////////////////////////////////

class delay extends StatelessWidget {
  const delay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Spacer(
            flex: 1,
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
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const info();
                }));
              },
              icon: Icon(
                Icons.help,
                color: Colors.lightGreen[600],
              )),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: const Center(
        child: Text(
          "التقويم",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

///////// /////////////////////////////////////////////
class nigthmod extends StatelessWidget {
  const nigthmod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Spacer(
            flex: 1,
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
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const info();
                }));
              },
              icon: Icon(
                Icons.help,
                color: Colors.lightGreen[600],
              )),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/frame-7.png",
              width: 100,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 10, shadowColor: Colors.grey),
                onPressed: () {},
                child: const Text("Nigth mode")),
          ],
        ),
      ),
    );
  }
}
///////////////////////////////////////////

class connect extends StatelessWidget {
  const connect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Spacer(
            flex: 1,
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
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return const info();
                }));
              },
              icon: Icon(
                Icons.help,
                color: Colors.lightGreen[600],
              )),
          const Spacer(
            flex: 1,
          )
        ],
      ),
      body: Center(
        child: Text(
          "you can connect with supported team soon",
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreen[600]),
        ),
      ),
    );
  }
}

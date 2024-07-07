import 'package:flutter/material.dart';
import 'package:fruitful2/english_dark_mode/eng_dark_help.dart';

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}

class QuestionAnswer {
  final String question;
  final String answer;

  QuestionAnswer({required this.question, required this.answer});
}

List<QuestionAnswer> qaList = [
  QuestionAnswer(
      question: "what is fruitful ?  ",
      answer: "fruitful is an app used for analysis and take care of plants "),
  QuestionAnswer(
      question: " idea for fruitful !",
      answer:
          "the idae for the app is that user take a photo for its plant and then fruitful analysis this plant and clear its disease and recommendation  "),
  QuestionAnswer(
      question: " who we are ?",
      answer: "we are students in electronic engineering working on this app"),
];

class eng_dark_chat extends StatefulWidget {
  const eng_dark_chat({super.key});

  @override
  State<eng_dark_chat> createState() => _eng_dark_chatState();
}

class _eng_dark_chatState extends State<eng_dark_chat> {
  final List<String> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add(message);
      String response =
          qaList.firstWhere((qa) => qa.question == message).answer;
      _messages.add(response);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return eng_dark_help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
              color: Colors.white,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("assets/images/frame-3.png"),
          ),
          Spacer(
            flex: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              "assets/images/frame-2.png",
              width: 30,
              color: Colors.white,
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Align(
                    alignment: index % 2 == 0
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: index % 2 == 0 ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        _messages[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: qaList.map((qa) {
              return ListTile(
                title: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () => _sendMessage(qa.question),
                  child: Text(
                    qa.question,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

// ignore_for_file: use_super_parameters, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:fruitful2/help.dart';

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
      question: "ما هو مثمر",
      answer: "مثمر , هو تطبيق يساعدنا في تشخيص النباتات ورعيتها"),
  QuestionAnswer(
      question: "فكرة عمل مثمر ؟",
      answer:
          "فكرة العمل تقوم على أن يقوم المستخدم بتصوير النبات وبعد ذالك يقوم مثمر بتشخيص ذالك النبات وتوضيح الامراض التي تصيب هذا النبات"),
  QuestionAnswer(
      question: "من نحن ؟", answer: "نحن طلاب هندسة منوف القائمين على المشورع"),
];

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
        automaticallyImplyLeading: false,
        actions: [
          Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext) {
                return help();
              }));
            },
            child: Image.asset(
              "assets/images/frame-1.png",
              width: 30,
            ),
          ),
          Spacer(
            flex: 9,
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
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
                  onPressed: () => _sendMessage(qa.question),
                  child: Text(qa.question),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

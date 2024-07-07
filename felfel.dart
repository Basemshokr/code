import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruitful2/help.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class felfel extends StatefulWidget {
  const felfel({super.key});

  @override
  State<felfel> createState() => _felfelState();
}

class _felfelState extends State<felfel> {
  File? _selectedImage;
  String? _responseImageUrl;
  Color _textColor = Colors.black;

  void _changeTextColor() {
    setState(() {
      _textColor = _textColor == Colors.black ? Colors.blue : Colors.black;
    });
  }

  void _handleTap() {
    _changeTextColor();
    _pickImageFromCamera();
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              radius: MediaQuery.of(context).size.width * 0.4,
              child: _responseImageUrl != null
                  ? Image.network(_responseImageUrl!)
                  : _selectedImage != null
                      ? Image.file(_selectedImage!)
                      : const Text(
                          "!صورتك هتظهر هنا",
                          style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Color.fromARGB(255, 85, 153, 93)),
                        ),
            ),
            SizedBox(
              height: 100,
            ),
            GestureDetector(
                onTap: () {
                  _handleTap();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "أضغط هنا لأكتشاف الفلفل",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontStyle: FontStyle.normal),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      _selectedImage = File(returnImage!.path);
    });
    _uploadImage(_selectedImage!);
  }

  Future<void> _uploadImage(File image) async {
    final uri = Uri.parse('http://your-local-api-endpoint/upload');
    final request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath('file', image.path));

    final response = await request.send();

    if (response.statusCode == 200) {
      final responseData = await response.stream.bytesToString();
      final decodedResponse = json.decode(responseData);
      setState(() {
        _responseImageUrl = decodedResponse['imageUrl'];
      });
    } else {
      
    }
  }
}

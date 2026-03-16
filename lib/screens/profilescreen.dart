import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsappclone/screens/widgets/uihelper.dart';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Uihelper.CustomText(
              text: "Profile info",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            Uihelper.CustomText(
              text: "Please provide your name and an optional ",
              height: 16,
            ),
            Uihelper.CustomText(text: "profile photo ", height: 14),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                _openBottom(context);
              },
              child: pickedImage==null? CircleAvatar(
                radius: 100,
                backgroundColor: Color(0XFFD9D9D9),
                child: Image.asset(
                  "assets/images/boarding.png",
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ): CircleAvatar(
                radius: 80,
                backgroundImage: FileImage(pickedImage!),

              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Type your name here",
                      hintStyle: TextStyle(color: Color(0XFF5E5E5E)),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF05AA82)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/happy-face 1.png"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
        callback: () {},
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){
                    _pickImage(ImageSource.camera);
                  }, icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey)),
                  IconButton(onPressed: (){
                    _pickImage(ImageSource.gallery);
                  }, icon: Icon(Icons.image, size: 80, color: Colors.grey),)
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (photo == null) return;
      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
    } catch (ex) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
          backgroundColor: Color(0XFF05AA82),
        ),
      );
    }
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/callsScreen.dart';
import 'package:whatsappclone/screens/camerascreen.dart';
import 'package:whatsappclone/screens/chatsscreen.dart';
import 'package:whatsappclone/screens/statusScreen.dart';
import 'package:whatsappclone/screens/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: Uihelper.CustomText(
            text: "WhatsApp",
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/Search.png"),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            Chatsscreen(),
            StatusScreen(),
            Callsscreen(),
          ],
        ),
      ),
    );
  }
}

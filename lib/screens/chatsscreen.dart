import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrContent = [
      {
        "images":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
            "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },
      {
        "images":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQiUvtYCuHnxrQ9iJVqomIDZ-QUVdSUwyKgQ&s",
        "name": "Pankaj",
        "lastmsg": "Good Night Dost",
        "time": "05.45 am ",
        "msg": "7",
      },
      {
        "images":
        "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
        "name": "Pushkar kumar ",
        "lastmsg": "Good Morning  Dost",
        "time": "05.45 Pm ",
        "msg": "5",
      },

    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      arrContent[index]["images"].toString(),
                    ),
                  ),
                  title: Uihelper.CustomText(
                    text: arrContent[index]["name"].toString(),
                    height: 14,fontweight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.CustomText(
                    text: arrContent[index]["lastmsg"].toString(),
                    height: 13,
                    color: Color(0XFF889095),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Uihelper.CustomText(text: arrContent[index] ["time"].toString(), height: 12, color: Color(0XFF026500)),
                    CircleAvatar(
                      backgroundColor: Color(0XFF036A01),
                      radius: 10,
                      child: Uihelper.CustomText(text: arrContent[index] ["msg"].toString(), height: 12, color: Color(0XFFFFFFFF)),
                    ),
                  ],),
                );

              },itemCount: arrContent.length,),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0XFF008665),
        child: Image.asset("assets/images/mode_comment_black_24dp 1.png"),

      ),
    );
  }
}

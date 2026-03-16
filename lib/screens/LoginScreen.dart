// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:whatsappclone/screens/widgets/uihelper.dart';
//
// class Loginscreen extends StatefulWidget {
//   @override
//   State<Loginscreen> createState() => _LoginscreenState();
// }
//
// class _LoginscreenState extends State<Loginscreen> {
//   String Selectedcountry = "India";
//
//   List<String> countries = ["America", "Africa", "Italy", "Germany"];
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 80),
//           Center(
//             child: Uihelper.CustomText(
//               text: "Enter your phone number ",
//               height: 20,
//               color: Color(0XFF00A884),
//               fontweight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 30),
//           Uihelper.CustomText(
//             text: "WhatsApp will need verify your phone number",
//             height: 16,
//           ),
//           Uihelper.CustomText(
//             text: "number. carrier charges may apply.",
//             height: 16,
//           ),
//           Uihelper.CustomText(
//             text: "What's my number?",
//             height: 16,
//             color: Color(0XFF00A884),
//           ),
//           SizedBox(height: 50),
//           DropdownButtonFormField(
//             items: countries.map((String country) {
//               return DropdownMenuItem(child: Text(country), value: country);
//             }).toList(),
//             onChanged: (newvalue) {
//               setState(() {
//                 Selectedcountry = newvalue!;
//               });
//             },
//             value: Selectedcountry,
//             decoration: InputDecoration(enabledBorder: UnderlineInputBorder(
//               borderSide: BorderSide(color: Color(0XFF00A884)),
//             )),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/otpscreen.dart';
import 'package:whatsappclone/screens/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();

  String selectedCountry = "India";

  List<String> countries = ["India", "America", "Africa", "Italy", "Germany"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),

            Center(
              child: Uihelper.CustomText(
                text: "Enter your phone number",
                height: 20,
                color: const Color(0XFF00A884),
                fontweight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Uihelper.CustomText(
              text: "WhatsApp will need to verify your phone",
              height: 16,
            ),

            Uihelper.CustomText(
              text: "number. Carrier charges may apply.",
              height: 16,
            ),

            Uihelper.CustomText(
              text: "What's my number?",
              height: 16,
              color: const Color(0XFF00A884),
            ),

            const SizedBox(height: 50),

            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: DropdownButtonFormField<String>(
                value: selectedCountry,
                items: countries.map((String country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCountry = newValue!;
                  });
                },
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                SizedBox(
                  width: 320,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(callback: (){
        login(phoneController.text.toString());
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  login(String phonenumber){
    if(phonenumber == ""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter phone number "),backgroundColor: Color(0XFF00A884)));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Otpscreen(phonenumber: phonenumber,)));
    }
  }
}

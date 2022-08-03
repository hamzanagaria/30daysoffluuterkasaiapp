// import 'dart:html';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
// class and object ke baare mai padha hi hoga aaplogo ne jaise ke mainr ek class banaya login page toh uska object mai main.dart mai define karra hu by using routes method class ke andar tum kitne bhi function class banalo woh ek object hojate hai kyuki woh class mai hai

// Class joh hoti hai uska naming convention kaisa hota hai aysa samajlo class first word Capital hota and then second woord bhi capital example CapitalHamza per function mai naming convention kaisi hoti hai example capitalHamza samje ... ab hum jab dusri class mai jaake likhege apni class ko toh woh object banega per dart ka joh compiler hai woh bohot smartt hai usko new LoginPage define karne ki jarwat nhi hai woh bine new LoginPage ke bhi ye chiz jaanta hai ke agla object bana na chahata hai okay easy hai 7
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AAj day 4 pe bhum use karege row column ka use joh bohot hi khtarak hota hai row column woh item hai joh list hoti hai widgets ki
    // Row column example row means horizontal like ------- or column means vertical like 1
    // Row column example row means horizontal like ------- or column means vertical like 1
    // Row column example row means horizontal like ------- or column means vertical like 1 samje row sleepoing line or column horizontal line
    return Scaffold(
      backgroundColor: Colors.white,

      // colum mai children hote hai
      body: Center(
        // Single child scrollview use isliye kiye kyuki isme error aara tha image overflow ka width itni bachi hai aysa kuch isliye isme use kiye single child scrollview choti screen mai bhi app barabar chale or ye jada tar scalfold mai hi hot ahai materilaui widget mai nhi
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              width: 300,
              height: 250,
            ),
            // Ye sizedbox isliye use kare hai kyuki humko gap chahiye image or text ke bich toh hum padding ke badle sized boz use kare or gap dediye
            SizedBox(
              height: 20.0,
              child: Text("The Only app in the world right now"),
            ),
            Text(
              "Welcome to Kasai App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.normal,
                  // this is how we add google fonts in our applcation lato ek style hai aysi boht style use kar sakte hai,,  ek dependencies daalni rehti hai google fonts ki pubspec.yaml mai or fhir import karo google fonts then yaha pe daaldo
                  // ye use karege toh ye her jagah apply hogi
                  fontFamily: GoogleFonts.lato().fontFamily),
            ),

            SizedBox(
              height: 20.0,
            ),
            // ye colum ko humne wrap kardiya hai padding or padding se wrap karne ke liye control. dabana hai usse boht option aayege pdding ke or usko padding se wrap kardo then use padding ka const banega usme symmetric daaldo jisse hum vertical or horizontal padding de sake .symmetric se ye faida hai hum padding de paayege vertical or horizontal dono tarf se
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Container(
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: " Enter UserName",
                      labelText: "User Name",
                    ),
                  ),
                  // Ye text form field isliye use kiye hai kyuki isme login page ke bpht feature hai
                  TextFormField(
                    // Ye obsecure ko true karge toh password mai dot dot dot show hoga
                    obscureText: true,
                    // Decoration aysa dete hai
                    decoration: InputDecoration(
                      hintText: " Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text("Login"),
              style: ButtonStyle(),
              onPressed: () {
                print("Your profile created");
              },
            )
          ],
        ),
      )),
      appBar: AppBar(
        title: Text("Kasai App"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        child: Text("About Us"),
      ),
    );
  }
}
//     // Yaha pe aysa hai ki her ek widget aona child lekar ghumta hai isliye hum child dete hai
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Hamza Kasai App",
//           // Text mai style dene ke liye aysa style lagake style dete hai
//           style: TextStyle(
//               fontSize: 40, color: Colors.yellow, fontWeight: FontWeight.bold),
//         ),
//       ),
//       drawer: Drawer(
//         child: Text(
//           " About Us ",
//           style: TextStyle(
//               fontSize: 50,
//               color: Colors.deepPurple,
//               fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }
// Class joh hoti hai uska naming convention kaisa hota hai aysa samajlo class first word Capital hota and then second woord bhi capital example CapitalHamza per function mai naming convention kaisi hoti hai example capitalHamza samje ... ab hum jab dusri class mai jaake likhege apni class ko toh woh object banega per dart ka joh compiler hai woh bohot smartt hai usko new LoginPage define karne ki jarwat nhi hai woh bine new LoginPage ke bhi ye chiz jaanta hai ke agla object bana na chahata hai okay easy hai
// short cut (ctrl.)

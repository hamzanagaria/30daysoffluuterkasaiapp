// import 'dart:html';
import 'package:flutter_application_catalog/pages/homepage.dart';
import 'package:flutter_application_catalog/utils/routes.dart';
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
          // Create responsive
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
              // Aysa style derte hai elevated button ko r
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(253, 165, 194, 33),
                minimumSize: Size(150, 40),
              ),
              onPressed: () {
                //Navigator ek class hai joh use hoti stack ke liye yaani ek page se dusre page pe jaane ke liye or aane ke liye
                // ab push named funtion 2 chize leta hai pehla context joh  build context se diya huwa hai or dusra routes joh key value pair ke liye hota hai joh humne main.dart mai banaya hai or ek class bhi banayi hai jispe humne static ka use karke direct bina object waali class banadiya hai or uspe humne naam bhi dediya hai string ko
                Navigator.pushNamed(context, MyRoutes.HomeRoute);
                //Pop use for piche jaane ke liye push aage or pop piche
                // Navigator.pop(context, MyRoutes.HomeRoute);

                // print("Your profile created");
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
// git init se entry hoti hai khaali reposatry banti hai git mai
// then git add . se saari file andar aati hai then git commit -m "first commit " se msg dete hai git ko then git branch -M yaani batate ghai humari branch master hai then git remote add origin https://github.com aapki git ki reposatry ka naam ab ye (remote means yaani joh aap dekh rhe ho git pe sab usko hum add karre origin mai add kiye humari file ka naam jaise http ye or joh repostry ka naam diye woh then git push -u origin day 1 , 2,,3,4 joh add karna hai karo origin mai sab aajayega humara github ka fhir uske through add karege easy simple)

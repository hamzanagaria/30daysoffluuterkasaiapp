import 'package:flutter/material.dart';
// class and object ke baare mai padha hi hoga aaplogo ne jaise ke mainr ek class banaya login page toh uska object mai main.dart mai define karra hu by using routes method class ke andar tum kitne bhi function class banalo woh ek object hojate hai kyuki woh class mai hai

// Class joh hoti hai uska naming convention kaisa hota hai aysa samajlo class first word Capital hota and then second woord bhi capital example CapitalHamza per function mai naming convention kaisi hoti hai example capitalHamza samje ... ab hum jab dusri class mai jaake likhege apni class ko toh woh object banega per dart ka joh compiler hai woh bohot smartt hai usko new LoginPage define karne ki jarwat nhi hai woh bine new LoginPage ke bhi ye chiz jaanta hai ke agla object bana na chahata hai okay easy hai 7
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          
          "Hamza Kasai App",
      // Text mai style dene ke liye aysa style lagake style dete hai
          style: TextStyle(
            
              fontSize: 40, color: Colors.yellow, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Text(
          " About Us ",
          style: TextStyle(
              fontSize: 50,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
// Class joh hoti hai uska naming convention kaisa hota hai aysa samajlo class first word Capital hota and then second woord bhi capital example CapitalHamza per function mai naming convention kaisi hoti hai example capitalHamza samje ... ab hum jab dusri class mai jaake likhege apni class ko toh woh object banega per dart ka joh compiler hai woh bohot smartt hai usko new LoginPage define karne ki jarwat nhi hai woh bine new LoginPage ke bhi ye chiz jaanta hai ke agla object bana na chahata hai okay easy hai

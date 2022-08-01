// # To add assets to your application, add an assets section, like this:
//   assets:
//   # Ye path joh hai humare imge ka folder ka hai 2 step hao image folder bana ne ke first assets naam ka folder banao usme images naam ka folder banao then usme photo daaldo or fhir uska path pubspec.uaml mai dedo bus
//     - assets/images/
//   // #   - images/a_dot_ham.jpeg

import 'package:flutter/material.dart';

// Flutter bhi void main se hi start hota hai
void main() {
  // Yaha pe ek method hai run app jisme hum apne app ka naam dete hai or fhir usse extends karte hai
  // Yaha pe ek app dene rehti hai
  runApp(MyApp());
}

// myapp ek class hai joh statelesswidget extend karta hai
class MyApp extends StatelessWidget {
  // Ye constractor ek method override karri hai build jiske andar saara ui likhte hai
  const MyApp({Key? key}) : super(key: key);

  @override
  // Build apna bohot imp hai jaha pe hum humara saara ui likhte hai
  Widget build(BuildContext context) {
    // Variable aysas banaTE HAI dart mai or usko use dollor $ lAgake use karye hai
    // Ye sab datatypes hai
    int days = 30;
    String name = "HGamza Mohd Aarif";
    double pi = 3.14;
    bool female = true;
    num temp = 30.5;
    // Var ikdum aahsan hota hai jaise maine tuesday likha toh meko define karne ki jarwat nhi padhi ke ye string hasi or integer mkuvh bhi du samaj jaayega ye
    var day = "Tuesday";
    // Constant ye chiz hoti hao jaise ke aapko pata hai ki pi ki value 3.14 se change nhi ho sakti hai toh aap usko const de sakto ho kyuki const mai joh variable banaonge woh kabhi change nhi hoga
    const pI = 3.14;

    // Jab uppar aapne ek app banayi hai (myapp) toh aapko return mai container ki jagah app ka naam dena naa ki container , container likhoge toh error milega isliye 3 App de sakte hai widgets app,Material app, and then kupateeno app. hum use karege material app
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text("Hamza"),
          // width: 30,
          // height: 40,
          
        ),
      ),
      
      drawer: Drawer(),
      
    );
  }
}

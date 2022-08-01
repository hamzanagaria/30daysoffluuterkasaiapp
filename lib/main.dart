// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// material.dart ki jarwat hai appun ko isliye material ko import karoge
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
// Scallfold widget use karne ke liye hum new class banayi or usko main file mai import kardiye

// Ye yaha pe isliye import huwa hai kyki humne structuring karne ke liye lib mai ek folder banaye hai jiska naam diye hai pages or usme humara folder hai homepage.dart
import 'pages/homepage.dart';

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
//ek company ki example mai lo -  Stateless widget maanlo boss hai woh khud bolra hai ki tum ek method override karo jisme tum tumahre sab task batao joh aapne aaj ke din kare
  @override
  // Build apna bohot imp hai jaha pe hum humara saara ui likhte hai
  // Build method hai joh humara joh widget return karta hai woh widget ka naam humne diya hai jaise material app scallfold isse kya hoga ke page pe ek design aayego ro ye sab possible kab huwa jab humne isme lagaya material libray joh import huyi hai usme hum ey sab daalna possible huwa
  // Build Method humara ko widgrt return isliye karne bolta hai kyuki usme humko widget dena hia isliye
  // Method ek functions hota hai or functions kabhi koi bhi chiz return maangta hai jaise uppar widget method kar andar build function hai joh return maangta hai ,,, ab usme aap likhoge int toh woh int return karega string likho toh string return karega joh humne dekh hi chuke hai or void likhoge toh nothing void means nothing
  Widget build(BuildContext context) {
    //Ab build context isliye likhte hai ki ab context boletoh ek tree usme sab hum daalte hai simple si basha mai context aapko sab chizo ki location batata hai jaise ke kiski kya position hai or kon kidr kaam karta hai or build cntext yaani jisme humne return mai material home mai homepage yaani ek chiz build hori hai
    // ab ye function ke andar variables banasakte ho or parameter de sakte ho jaise ke mai ne diya bring vegetables ek function hai uske andar paramter diya int rupees and bool thaila ab dono ke andar value dena hai toh waha pe ek curly braces provide kiye hai usse value de sakte ho aap or ye value et rahegi but aapki value chnage kab hogi jab aap class ke andar apne function ko call kiye or usme by default value provide kardeee toh woh hi set hojaygei jaise aapko example dekhna hai toh class mai aao
    // Or ek baar ek baar @required daaldiye toh upper value deni hi padegi nhi toh error aayega
    bringVegetables(
        thaila:
            true); //Ye set hojayegi per agar aap nice @required kardoge variable ke paas toh aapko fhir batana padega uppar jab aap function call karoge tab ke aap ko thaile ki value deni hogi

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
    //  Scalfold karne ka simple sa reason hai ki woh sab wight nhi karta hai or Material app sab white kardeta hai
    // Method ek functions hota hai or functions kabhi koi bhi chiz return maangta hai jaise uppar widget method kar andar build function hai joh return maangta hai ,,, ab usme aap likhoge int toh woh int return karega string likho toh string return karega joh humne dekh hi chuke hai or void likhoge toh nothing void means nothing
    return MaterialApp(
      //Yaha pe class banaye hai usko new file mai use karege
      // home: HomePage(),
      // appBar: AppBar(
      //   title: Text("Catalog app"),
      // ),
      // body: Center(
      //   child: Container(
      //     child: Text("Hamza"),
      //     // width: 30,
      //     // height: 40,
      //   ),

      // ),
      // drawer: Drawer(),

      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        // Agar page pe theme dena hai toh ayse dege ye clean code likha huwa hai ...Per ek chiz boluga jaise aapne diye brightness.dark or fhir primary swatch doge kuch bhi color toh fhir bhi woh dark rahega kyuki dark mai nhi hota hai light mai theme chnage hoga
        brightness: Brightness.light,
        // andar app bar ye sab ka color chnage karsakte hai by default blue aata hai per apan red green yellow kuch bhi kar sakte hai
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      // primaryTextTheme: GoogleFonts.latoTextTheme(),
      // Routes are like key value value pair and routes are of 4 types initial routes , onunknown routes ,on generate routes , ongenerateinitial routes
      // Routes mean intent or activity rasta
      // Key value pair like dictionaRY OR hashmap
      // Toh ye aysa kaam karta hai niche slash / use kare the woh bydefault home lear tha otr usme humne loginpage diye the per a b hum chahte hai ki yehi page print howe toh isko dege initial routes joh isko or initial route dekhe is me class define kardege woh print hojayegi ismme
      // initialRoute: "/homepage",
      routes: {
        // slash/ by default hota hai slash mai joh double couts mai hai woh string uske andar ki value key hai value mai hum dere page ke naam jaisa humne diya home page joh error fhekega kyuki usko pehle hi humne call kar chuke hai jaise tum slash / daaloge toh woh by default home hi lega
// Kitni bhi routes de sakte hai
// Class joh hoti hai uska naming convention kaisa hota hai aysa samajlo class first word Capital hota and then second woord bhi capital example CapitalHamza per function mai naming convention kaisi hoti hai example capitalHamza samje ... ab hum jab dusri class mai jaake likhege apni class ko toh woh object banega per dart ka joh compiler hai woh bohot smartt hai usko new LoginPage define karne ki jarwat nhi hai woh bine new LoginPage ke bhi ye chiz jaanta hai ke agla object bana na chahata hai okay easy hai
// Bydefault slash / hi use hoga isme usme aap isko joh routes doge usko home page lekar dega but aap chahte ho ke homepage ab use ho toh aap usko initial routes mai define karoge woh kaisa karoge aapko uppar dekhne milega uppar dekho initial routes
        "/": ((context) => LoginPage()), //creating object of out class..
        // "/homepage": (context) => HomePage(),
        // "/Login": (context) => LoginPage(),
      },
    );

    // Function Kaisa banate dekho ab ye ke function ka simple sa logic hai ki class mai hai toh method or class ke bahar hai toh function hai example uppar void main (){Run App : my App} -> ye ek function hai
// Jaise hum ek function banayege Example

    //matrial ko use karne ki ye bhii wajah hai ki ye apne ko ek bana banaya ui banake deta hai samje bhai
    // Ab yaha pe mujhe milega home usko use karke ek container banaenge or container ye hota hai ki , container boletoh ek box jisko anadar hum text ye sab dekhe design karege
    //   home: Material(
    //       //home mai agar mai container use karuga toh ek black color mai page Text likhela aayega or fhir mehnat alag isse accha mai material dedunga toh ek white color ka accha page aayega uspe color ye sab dene ki mehnat bachegi
    //       child: Center(
    //           //Center se Center mai aayega text
    //           child: Container(
    // //Container ek box ko bolte jaha pe sab design hota hai ui

    // //ab yaha pe ek $ dolor hai daale bhumne toh kyu daale hai usko simple ans ye hai ki text joh hai woh string leta hai and usme integr daalna hai toh dollor ka use karna padega apne ko integer ghusane ke liye curly braces bhi use kar sakte hai jab tab ye word ek se jaada ho
    // // Variable koi bhi define karna hai string text ke andar toh dollor $ ka use karna padega
    // child: Text("Hamza Mohd Aarif $days days of flutter by $name"),
    // // Plus + name lagake bhi karsate hai
    // // child: Text("Hamza Mohd Aarif $days days of flutter by $name"+name),
    // ))));
    // );
  }

  // Function Kaisa banate dekho ab ye ke function ka simple sa logic hai ki class mai hai toh method or class ke bahar hai toh function hai example uppar void main (){Run App : my App} -> ye ek function hai
// Jaise hum ek function banayege Example
// Function or method mai ye farak hai ki class mai ho toh method hota hai wahi function or class ke bahar ho toh function bus ye farak hai
// Or ek baar ek baar @required daaldiye toh upper value deni hi padegi nhi toh error aayega
  // bringVegetables(thaila: true); //Ye set hojayegi per agar aap niche @required kardoge variable ke paas toh aapko fhir batana padega uppar jab aap function call karoge tab ke aap ko thaile ki value deni hogi
// ab ye function ke andar variables banasakte ho or parameter de sakte ho jaise ke mai ne diya bring vegetables ek function hai uske andar paramter diya int rupees and bool thaila ab dono ke andar value dena hai toh waha pe ek curly braces provide kiye hai usse value de sakte ho aap or ye value et rahegi but aapki value chnage kab hogi jab aap class ke andar apne function ko call kiye or usme by default value provide kardeee toh woh hi set hojaygei jaise aapko example dekhna hai toh class mai aao
  bringVegetables({@required int rupees = 100, bool thaila = false}) {
    //  function use karte raho ro apne kaam karte raho
    // alag alag function banao or apne karo her kaam ke liye function banao usse kya hoga codevreadability acchi hogi
  }
}

// git pe humara local server pe saari file daalege toh terminal mai git init then ek empty git ka local server tayyar hoga jaape hum humari saari file daal sakte hai fhir kitni file woh git nhi le paata hai toh hum usko bhi addd karege git add . likhege toh saari file aajayegi (.dot iska matlab hai saari file git pe rakho . se saari file target  hoti hai )
// Ye jab bhi aysa error aayega toh answer ye hoga second row mai aao..
// S C:\src\flutter_application_catalog> git commit -m "First commit"
// Author identity unknown

// *** Please tell me who you are.

// Run

//   git config --global user.email "you@example.com"
//   git config --global user.name "Your Name"

// to set your account's default identity.
// Omit --global to set the identity only in this repository.

// fatal: unable to auto-detect email address (got 'HAMZA@LAPTOP-861JSA4G.(none)')

// Ye answer rahega above error ka
// git init
// Reinitialized existing Git repository in C:/src/flutter_application_catalog/.git/
// PS C:\src\flutter_application_catalog> git config user.name "someone"
// PS C:\src\flutter_application_catalog> git config user.email "someone@someplace.com"
// PS C:\src\flutter_application_catalog> git add *
// PS C:\src\flutter_application_catalog> git commit -m "some init msg"

// Git init humne isliye daale ke ye jaisa daalege git init waise hio ye hunare local server pe ye tracking shuru kardega or khaali repostirity present hogi ek git ki profile pe .. hum joh bhi code likhege woh track hoga humara ...
// Master github ka branch tha whah pe click karke humne ek new breanch banaye hai or fhir day1 naam ka jaha pe joh bhi file banaege woh github pe save hogi samjaa

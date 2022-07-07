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
import 'dart:html';

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
    // Jab uppar aapne ek app banayi hai (myapp) toh aapko return mai container ki jagah app ka naam dena naa ki container , container likhoge toh error milega isliye 3 App de sakte hai widgets app,Material app, and then kupateeno app. hum use karege material app
    return MaterialApp(
        //matrial ko use karne ki ye bhii wajah hai ki ye apne ko ek bana banaya ui banake deta hai samje bhai
        // Ab yaha pe mujhe milega home usko use karke ek container banaenge or container ye hota hai ki , container boletoh ek box jisko anadar hum text ye sab dekhe design karege
        home: Material(
            //home mai agar mai container use karuga toh ek black color mai page Text likhela aayega or fhir mehnat alag isse accha mai material dedunga toh ek white color ka accha page aayega uspe color ye sab dene ki mehnat bachegi
            child: Center(
                //Center se Center mai aayega text
                child: Container(
      //Container ek box ko bolte jaha pe sab design hota hai ui

      child: Text("Hamza Mohd Aarif 30 days of flutter"),
    ))));
  }
}

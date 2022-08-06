// import 'dart:html';
// import 'dart:html';

import 'package:flutter_application_catalog/pages/homepage.dart';
import 'package:flutter_application_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
// class and object ke baare mai padha hi hoga aaplogo ne jaise ke mainr ek class banaya login page toh uska object mai main.dart mai define karra hu by using routes method class ke andar tum kitne bhi function class banalo woh ek object hojate hai kyuki woh class mai hai

// Class joh hoti hai uska naming convention kaisa hota hai aysa samajlo class first word Capital hota and then second woord bhi capital example CapitalHamza per function mai naming convention kaisi hoti hai example capitalHamza samje ... ab hum jab dusri class mai jaake likhege apni class ko toh woh object banega per dart ka joh compiler hai woh bohot smartt hai usko new LoginPage define karne ki jarwat nhi hai woh bine new LoginPage ke bhi ye chiz jaanta hai ke agla object bana na chahata hai okay easy hai 7
// class LoginPage extends StatelessWidget {

// Ek aahsaan basha mai bolu toh state hota hai kuch usme change hona jaise ke mai betha hu toh ek usme change hora hai toh woh uski state change hori hai ..niche line mai aao
// stateless widget joh hota hai usme hum kuch bhi change nhi karsakte yaani matlab agar kuch chnage karna hi hai toh puri uski state change kardo jaise ke example "Welcome" ab iske aage koi text lagana hai toh tum textformfield mai daaloge hamza toh welcome hamza ke liye ek dusra intent tayyar kardega jisse humaara app joh rehga uske performance mai takleef hogi samje stateless widget ye hota hai ...ab niche line mai aao or continue karte
// statefull widget mai 2 class hoti hai pehli class toh hum use karte hi hai dusri class mai hum pura excess kar sakte hai state full ko waha pe tum click karoge toh tumhare ko pata chalega joh usme ek state class bani hai woh humare login page ko access karne degi uske ab her function or state mai ek faida ye hai ke uske andar change uske andar change karna hai toh ek new state nhi aayegi wohi state baar baar change hogi jaise ke welcome humara text hai uske aage kuch daalna hai toh hum ek variable banaenge uska naam name dege fhir text form field mai ek function call karege jiska naam onChnage hai woh usme string ka variable define karege usko hum dege value or fhir value ko joh variable banaye hai usse uske equal kardege ... fhir ek kaam rehjayega jab aap kuch chnage karoge toh puri state mai kuch harkarta aayegi na uske liye hum setstate bus or kuch nhi bus ...
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

// _undercsore joh uska matlab kya hai - uska matlab ye hai ki uski file private hai usko koi access kar nhi skta hai ..
class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedbutton = false;
  // Idhar iska variable banaye hai joh naam diye hai woh global key ke usse use hoga niche
  final _formkey = GlobalKey<FormState>();
  // ye ek function hai joh humne on tap ko dediya hai isme condition lagi ye hai ke agar fomkey ka current state validate hai toh dusre page pe lekar jaao nhi toh null fhekdo or agar right hai toh await future.delayed 2 decond ka time do or button changed karke dusre page mai daaldo of fhir jab mai return aao toh woh button ko false kardo yaaani usme fhir login dikhna chahiye simple
  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changedbutton = true;
      });
    } else {
      return null;
    }
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      // Ab jab sab chiz change kiye hai toh state toh change karna wajib hai nhi toh uske andar ke change hi nhi dikhege aapko bhai
      changedbutton = true;
    });
    //  await ka mtlab hota hai yaai aapka logic perform hora hai uske baad ye logic ko start kardo await yaani rukha rahega woh logic jaisa uppar waala logic perform hoga fhir uske andar joh condition hogi woh aayegi

    await Navigator.pushNamed(context, MyRoutes.HomeRoute);
    setState(() {
      changedbutton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // AAj day 4 pe bhum use karege row column ka use joh bohot hi khtarak hota hai row column woh item hai joh list hoti hai widgets ki
    // Row column example row means horizontal like ------- or column means vertical like 1
    // Row column example row means horizontal like ------- or column means vertical like 1
    // Yaami ek ke baad ek ui daalsakte...
    // Row column example row means horizontal like ------- or column means vertical like 1 samje row sleepoing line or column horizontal line
    return Scaffold(
      backgroundColor: Colors.white,

      // colum mai children hote hai
      body: Center(

          // Create responsive
          // Single child scrollview use isliye kiye kyuki isme error aara tha image overflow ka width itni bachi hai aysa kuch isliye isme use kiye single child scrollview choti screen mai bhi app barabar chale or ye jada tar scalfold mai hi hot ahai materilaui widget mai nhi
          child: SingleChildScrollView(
            // Idhar use kiye hai humne or isko ek key dena padhta hai jog global key hoti woh kahi se bhi access hoti hai toh woh humne uppar banaye hai _formkey ke naam se

        child: Form(
          key: _formkey,
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
                "Welcome to Kasai App $name",
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
                    // Hum textfield bhi use kar sakte the per humne textformfield isliye use kiyakyuki hum easily isme validation on chnage ye sab kar sakte hai
                    // Hum ne iska ek parent banaya hai form kyuki humko iske andar validator use karna hai isliye 
                    // form humne uppar column ke paas use kiye hai kyuki usmeye dono textform field aajaye isliye uppar waala column
                    TextFormField(
                        decoration: InputDecoration(
                          hintText: " Enter UserName ",
                          labelText: "User Name",
                        ),
                        //  Validator ek values leta hai jiske andar hum sab apni condition daalege 
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Enter your username";
                          }
                        },

                        // Ye onChnage se value chnage hogi fhir state set kardege
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),

                    // Ye text form field isliye use kiye hai kyuki isme login page ke bpht feature hai
                    // Her ek components ek khud ki state maintain karta hai

                    // Hum ne iska ek parent banaya hai form kyuki humko iske andar validator use karna hai isliye 
                    TextFormField(
                      // Ye obsecure ko true karge toh password mai dot dot dot show hoga
                      obscureText: true,
                      // Decoration aysa dete hai
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        labelText: "Password",
                      ),
                    //  Validator ek values leta hai jiske andar hum sab apni condition daalege 
                      validator: (values) {
                        if (values != null && values.isEmpty) {
                          return "Enter your password";
                        } else if (values!.length < 6) {
                          return "Your Password legnth Should be 6 ";
                        }
                        ;
                      },
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              // ab ye humne ek khud ka button banaliya hai custom button per ab humko ye button pe click karke koi dusri property mai jaana hai toh humko 2 or widget milege jisko hum container se wrap karege then iska kamal dekhna
              // Ye button toh tayyar hogaya hai per ispe click karege toh kuch nhi hoga uske 2 widget ka use karege woh abhi hum wrap karege uska naam define karge
              // Toh woh 2 widget hai inkwell or Juster detector ab inkwell ke faide ye hai ki woh jab hum button pe lcik karege toh animation type dega yaani aysa lagega ke humne uspe click kiye hai ...per jab aap juster detector ko use karoge toh uske button ko click karoge toh woh perform karega dusre activity mai pocha dega per uss button pe koi response nhi dikhega bus click hora rega or uspe koi animation nhi aayegi ... isliye hum use karege inkwell
              // Container ke andar on pressed ya fhor ontap nhi use kar sakte isliye hum dere hai inkwell joh widget hai usme use kar sakte ho aap
              // Material is use for wraplle in button effects
              Material(
                // Kabhi aapki border radius barabar kaam nhi karri rahegu toh iska aap use karlena
                // Pr aap dono use karoge toh error fhekega
                // shape:
                //     changedbutton ? BoxShape.circle : BoxShape.rectangle,
                //  Ye material aapko wripple effects aahsaani se dega
                color: Colors.deepPurpleAccent,

                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  // Isse hum wriplle effects de sakte hai humare button mai

                  // Container ke andar on pressed ya fhor ontap nhi use kar sakte isliye hum dere hai inkwell joh widget hai usme use kar sakte ho aap
                  // inkwell daalne ke baad sab unlock hojayega o ntap on hover lower sab
                  onTap: () => moveToHome(context),

                  // Ye kal samaj na hai
                  // Next page pe kaisa jaa sakte hai delay ke saat
                  // await ka mtlab hota hai yaai aapka logic perform hora hai uske baad ye logic ko start kardo await yaani rukha rahega woh logic jaisa uppar waala logic perform hoga fhir uske andar joh condition hogi woh aayegi

                  // await Future.delayed(Duration(seconds: 2));
                  // setState(() {
                  //   // Ab jab sab chiz change kiye hai toh state toh change karna wajib hai nhi toh uske andar ke change hi nhi dikhege aapko bhai
                  //   changedbutton = true;
                  // });
                  // //  await ka mtlab hota hai yaai aapka logic perform hora hai uske baad ye logic ko start kardo await yaani rukha rahega woh logic jaisa uppar waala logic perform hoga fhir uske andar joh condition hogi woh aayegi

                  // await Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  // setState(() {
                  //   changedbutton = false;
                  // });

                  // Container ke andar on pressed ya fhor ontap nhi use kar sakte isliye hum dere hai inkwell joh widget hai usme use kar sakte ho aap
                  // ye animated container isliye use kiye hai kyuki isme hum animation de sakege
                  //  ink hum use kar rhe the wriplle effect dene ke liye per hum ab animated container mai bhi use karne sikhege material ke trough..
                  // child: Ink(
                  child: AnimatedContainer(
                    // ey iski required field hai duration joh dena hi padhta hai

                    duration: Duration(seconds: 1),
                    child: Container(
                      height: 45,
                      // ye yaha pe humne conditional expression use kiye hai ? question marks matlab condition true hai toh 40 kardo nhi toh 150 kardo yaani yaha pe button mai animation aayeg atoh aapko pata chalega na
                      // ? marks hi conditional expression hai yaani true hai 40 rehendo false hao toh 150 kardo
                      width: changedbutton ? 40 : 150,

                      // ye login text center mai aayega
                      alignment: Alignment.center,
                      child: changedbutton
                          ? Icon(Icons.done)
                          : Text(
                              "Login",
                              // text mai style aysa dete hai
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                      // Ye yaha se decorarion de sakte hai box ko yaha se hum decorate karege box ko or color joh hai fhir container mai mat dena kyuki dono jagah color use karoge toh error dega
                      // decoration: BoxDecoration(

                      //     // Kabhi aapki border radius barabar kaam nhi karri rahegu toh iska aap use karlena
                      //     // Pr aap dono use karoge toh error fhekega
                      //     // shape:
                      //     //     changedbutton ? BoxShape.circle : BoxShape.rectangle,
                      //     color: Colors.deepPurpleAccent,
                      //     borderRadius:
                      //         BorderRadius.circular(changedbutton ? 30 : 9)),
                    ),
                  ),
                ),
              )

              // ElevatedButton(
              //   child: Text("Login"),
              //   // Aysa style derte hai elevated button ko r
              //   style: TextButton.styleFrom(
              //     backgroundColor: Color.fromARGB(253, 165, 194, 33),
              //     minimumSize: Size(150, 40),
              //   ),

              //   onPressed: () {
              //     //Navigator ek class hai joh use hoti stack ke liye yaani ek page se dusre page pe jaane ke liye or aane ke liye
              //     // ab push named funtion 2 chize leta hai pehla context joh  build context se diya huwa hai or dusra routes joh key value pair ke liye hota hai joh humne main.dart mai banaya hai or ek class bhi banayi hai jispe humne static ka use karke direct bina object waali class banadiya hai or uspe humne naam bhi dediya hai string ko
              //     Navigator.pushNamed(context, MyRoutes.HomeRoute);

              //     //Pop use for piche jaane ke liye push aage or pop piche
              //     // Navigator.pop(context, MyRoutes.HomeRoute);

              //     // print("Your profile created");
              //   },
              // )
            ],
          ),
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

import 'package:flutter/material.dart';
import 'package:untitled_loginpageintegration/second_screen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled_loginpageintegration/third_screen.dart';
import 'model class.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: App(),
      ),
    ),
  );
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController usernamecontroller = TextEditingController(text: "");
  TextEditingController bookingIdcontroller = TextEditingController(text: "");
  bool gg = false;
  bool bb = false;
  bool cc = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFF242429),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter:
                      ColorFilter.mode(Color(0xFF242429), BlendMode.hardLight),
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/courseSignInBackground.png',
                  ))),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Complete your ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text('eLearning, view your',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('course details or make',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              Text('any changes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
              ),
              Text(
                'Enter your surname and booking',
                style: TextStyle(color: Colors.grey, fontSize: 19),
              ),
              Text(
                'reference number to get started',
                style: TextStyle(color: Colors.grey, fontSize: 19),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230),
                child: Text(
                  'Your surname',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                height: 60,
                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      gg = false;
                    } else {
                      gg = true;
                    }

                    setState(() {});
                  },
                  controller: usernamecontroller,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'e.g. Smith',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.contacts, size: 15,
                      color: Colors.grey.shade200,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 120),
                child: Text(
                  'GuardPass and booking refrence ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                height: 60,
                width: 310,

                child: TextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      bb = false;
                    } else {
                      bb = true;
                    }

                    setState(() {});
                  },
                  controller: bookingIdcontroller,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.black)),
                    hintText: 'e.g.225121',
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.email,size: 15,
                      color: Colors.grey.shade200,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, top: 4),
                    child: Icon(
                      Icons.report_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    'You can find the booking refrence number in the emails\n we have sent you ',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: gg == true && bb == true
                    ? () {  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
                        post(usernamecontroller.text, bookingIdcontroller.text);
                      }
                    : null,
                child: Container(
                  //color: gg == true && bb == true
                     // ? Colors.green
                     // : Colors.transparent,
                  height: 48,
                  width: 310,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),  color: gg == true && bb == true
                  ? Colors.green
                    : Colors.transparent,),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 115, top: 12),
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: gg == true && bb == true
                          ? Colors.black
                          : Colors.grey,

                          fontSize: 20),
                    ),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  navigateToSecondScreen() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SecondScreen(
        username: usernamecontroller.text,
        bookingId: bookingIdcontroller.text,
      );
    }));
  }

  post(String email, String password) async {
    print(email);
    print(password);

    final response = await http.post(
        Uri.parse(
            "https://staging.get-licensed.co.uk/guardpass/api/auth/login"),
        body: {'email_address': email, 'password': password});

    print(response.statusCode);
    print(response.body);

    var data = jsonDecode(response.body);
    print(data);

    King k = King.fromMap(data);




  // Navigator.push(context, MaterialPageRoute(builder: (context) {
    //  return SecondScreen(
      //  username: k.accessToken!,
        //bookingId: k.message!,
      //);
    //}));
  }
}

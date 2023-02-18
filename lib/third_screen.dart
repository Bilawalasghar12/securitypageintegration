import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:untitled_loginpageintegration/model%20class.dart';

import 'model2class.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ThirdScreen(),
      ),
    ),
  );
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _AppState();
}

class _AppState extends State<ThirdScreen> {
  List<String> titles1 = [
    "Complete your course elearning",
    "complete your ACT elaerning",
    "confirm your personal details",
    "collect your ID documents"
  ];
  List<String> titles2 = [
    "Take the mock test and get prepared",
    "Get Access to your ebook",
    "Revision notes for your courses"
  ];

  late Job Jobsinfo;


  @override
  void initstate() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFFFE5E5E5),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'My Course',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_balance,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
      ),
      body: FutureBuilder<Job>(
          future: get(),
          builder: (context, AsyncSnapshot<Job> snapshot){
            if(snapshot.hasData){
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // height: 140,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset(
                                    'assets/websiteQRCode_noFrame.png',
                                    height: 40,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 3),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${snapshot.data!.data.email}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            '${snapshot.data!.data.id}',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Icon(Icons.arrow_forward),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 11),
                            child: Container(
                              height: 1,
                              width: 347,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Location:',
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'London',
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 18),
                                    child: RichText(
                                        text: TextSpan(
                                            text: 'Timing:',
                                            style: TextStyle(color: Colors.black),
                                            children: [
                                              TextSpan(
                                                  text: '1st day: 12:00 PM to 06:30 PM',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold))
                                            ])),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 180),
                                    child: Image.asset(
                                      'assets/button-two-line-large_2x.png',
                                      height: 25,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text('You are on the'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Bronze',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('plan'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Upgrade your plan',
                        style:
                        TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('for free rescheduling ')
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 14,
                      ),
                      Text('retake and result within 5 days')
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'pre-course Checklist',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(
                        width: 147,
                      ),
                      Container(
                        height: 22,
                        width: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            'Hurry up! 4 days left',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18,
                      ),
                      Text(
                        'Things you need to do',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 19,
                      ),
                      Text(
                        'Failure to do any of the below may result in you being asked to ',
                        style: TextStyle(color: Colors.red, fontSize: 15),)
                    ],
                  ),
                  Row(children: [SizedBox(width: 19,),
                    Text
                      ('and reschedule fee of 150 may apply',
                        style: TextStyle(color: Colors.red, fontSize: 15)),
                  ],),

                  SizedBox(height: 15,),


                  Column(children: [
                    ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: titles1.length,
                        separatorBuilder: (BuildContext ctx, int index) =>
                            SizedBox(height: 10,),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Icon(Icons.bookmark_add_outlined),
                                  SizedBox(width: 5,),
                                  Text(titles1[index],
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                ],),


                                Icon(Icons.arrow_forward)
                              ],
                            ),

                            height: 38,
                            width: 375,
                            decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(1)),
                          );
                        }

                    )
                  ],),
                  SizedBox(height: 10,),
                  Row(children: [ SizedBox(width: 19,),
                    Text('Additional Resources', style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),)
                  ],),
                  SizedBox(height: 5,),
                  Row(
                    children: [SizedBox(width: 19,),
                      Text(
                        'Resources to help you post with ease we highly reccomend you to go through',
                        style: TextStyle(fontSize: 12,
                            color: Colors.grey),),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Column(children: [
                    ListView.separated(
                        itemCount: titles2.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        physics: const NeverScrollableScrollPhysics(),

                        separatorBuilder: (BuildContext ctx, int index) =>
                            SizedBox(height: 10,),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 38,
                            width: 375,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.accessibility_new_sharp),
                                    Text(titles1[index],
                                      style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                ),

                                Icon(Icons.arrow_forward)

                              ],
                            ),
                          );
                        }


                    )

                  ],)


                ],
              );
            }
            else{
              return Center(child: CircularProgressIndicator());
            }



          }

      ),
    );
  }

  Future<Job> get() async {
    final token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3FhLXRlc3QuZ2V0LWxpY2Vuc2VkLmNvLnVrL3Byb3RlY3QvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2NzUwODY3OTcsIm5iZiI6MTY3NTA4Njc5NywianRpIjoiT2JXNFFvNUxNdW5jeklpaiIsInN1YiI6IjMyNjg3NSIsInBydiI6ImMyYTBkODEzNzYyMjgxOTUwYzhhMGRkN2FmMGI4ZThkYWYzOWU5YTkifQ.AH-vl7ZZog8Vf_sVlwc9PSWqzVsx0b8j7K2sN0tdG38';
    Map<String, String> headers = {
      "Authorization": "Bearer $token",
      "Accept": "application/json"
    };

    final response = await http.get(
      Uri.parse(
          'https://qa-test.get-licensed.co.uk/api/v1/bookings/320755/app-booking'),
      headers: headers,);
    print(response.body);
    var data = jsonDecode(response.body);
    print(response);
    final jobData = Job.fromMap(data);
    print('Job: ${jobData.message}');
    return jobData;
  }
}



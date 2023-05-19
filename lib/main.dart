import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  int cur_t = 1;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: cur_t,
            onTap: (value) {
              setState(() {});
              cur_t = value;
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Colors.black,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.video_collection_sharp,
                    color: Colors.black,
                  )),
              BottomNavigationBarItem(
                  label: "",
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  )),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.arrow_back),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                        child: ShaderMask(
                          shaderCallback: (bounds) {
                            return LinearGradient(
                                    colors: [
                                  Color.fromARGB(255, 0, 115, 255),
                                  Colors.orange,
                                  Colors.red,
                                  Colors.deepOrange,
                                ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight)
                                .createShader(bounds);
                          },
                          child: Text(
                            "MaheshGhule420",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.more_vert_rounded),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("lib/maheshsir.jpg"),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "50",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Post",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "5M",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 190, 0),
                        child: Text("@mahesh ghule"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text("#the_baap_company💖❤"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text("#Flutter Developer"),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Text("#Car_lover🚗"),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 60,
                      maxWidth: 200,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("     Following     "),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 60,
                      maxWidth: 200,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "     message     ",
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 50,
                      maxWidth: 50,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.contact_mail,
                        size: 20,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Center(
                    child: DefaultTabController(
                      length: 3,
                      child: TabBar(tabs: [
                        Tab(
                          icon: Icon(
                            Icons.apps,
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                          icon: Icon(
                            Icons.video_library_rounded,
                            color: Colors.black,
                          ),
                        ),
                        Tab(
                            icon: Icon(
                          Icons.account_box_outlined,
                          color: Colors.black,
                        ))
                      ]),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 103,
                        width: 103,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 103,
                        width: 103,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 103,
                        width: 103,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                      Image.asset(
                        "lib/maheshsir.jpg",
                        height: 105,
                        width: 105,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:chatgpt_ui/scr/app.dart';
import 'package:chatgpt_ui/scr/screns/widgets/companents/components.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _State();
}

class _State extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF343541),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF343541),
          leading: Builder(builder: (context) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu),
              ),
            );
          }),
        ),
        drawer:  Container(
          width: MediaQuery.of(context).size.width * .6,
          child: Drawer(
            backgroundColor: Color(0xFF202123),
            child: Padding(
              padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
              child: Column(
                children: [
                  Companents(text: "New chat",iconpaht: "assets/images/add.png"),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                  Companents(text: "What is UX Design",iconpaht: "assets/images/messageminus.png"),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                  Companents(text: "Color Palettes",iconpaht: "assets/images/messageminus.png"),
                  SizedBox(height: MediaQuery.of(context).size.height * .5,),
                  Divider(
                    color: Colors.grey,
                  ),
                  Expanded(child: Companents(text: "Clear Conversation",iconpaht: "assets/images/vector_delete.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                  Expanded(child: Companents(text: "Upgrade to Plus",iconpaht: "assets/images/user.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                  Expanded(child: Companents(text: "Dark Mode",iconpaht: "assets/images/moon.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                  Expanded(child: Companents(text: "Updates and FAQs",iconpaht: "assets/images/maximize.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                  Expanded(child: Companents(text: "Log out",iconpaht: "assets/images/logout.png")),
                  SizedBox(height: MediaQuery.of(context).size.height * .004,),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 40),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                          image: AssetImage("assets/images/Frame_20_1.png"),
                          width: 34,
                          height: 35.58),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .05,
                      ),
                      Text(
                        "What is UX Design?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: ColoredBox(
                    color: Color(0xFF444654),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ListTile(
                                  leading: Image(image: AssetImage("assets/images/Avatar ChatGPT.png")),
                                  subtitle: Text("UX design, or user experience design, refers to the process of designing products or services that are intuitive, accessible, and easy to use for the end user. The goal of UX design is to create products and services that are useful, usable, and desirable, and that meet the needs and expectations of the use \n\n\n UX designers use a range of techniques and tools to understand the user's needs, behaviors, and preferences, and to create designs that are tailored to those needs. They may conduct user research, create personas, develop wireframes and prototypes, conduct usability testing, and analyze user feedback in order to improve the user experience.",
                                    style: TextStyle(color: Colors.white,fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .6,
              height: MediaQuery.of(context).size.height * .05,
              child: DecoratedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/images/refresh.png"),
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .03,
                    ),
                    Text(
                      "Regenerate Response",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: false,
                cursorColor: Colors.white,
                cursorWidth: 2,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF40414F),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Image(image: AssetImage("assets/images/Vector.png"),),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 10),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "ChatGPT Mar 14 Version.",
                        style: TextStyle(
                           decoration: TextDecoration.underline,
                           fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: " Free Research Preview.",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




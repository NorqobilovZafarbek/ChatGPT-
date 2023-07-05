import 'package:flutter/material.dart';

import 'chatscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void nextPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/image_33.png"),
              colorFilter: ColorFilter.mode(Color(0xFF193718), BlendMode.color),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 264),
                child: Image(
                  image: AssetImage("assets/images/Frame_1.png"),
                  width: 157.83,
                  height: 157.83,
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Text(
                      "Welcome To ChatGPT",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFF8BFF),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 15, right: 20),
                    child: Container(
                      width: 372,
                      height: 120,
                      child: const Text(
                        """The dialogue format makes it possible for ChatGPT to answer followup questions, admit its mistakes, challenge incorrect premises, and reject inappropriate \n requests.""",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 19,
                          color: Color(0xFFFF8BFF),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: nextPage,
                child: Container(
                  width: 330,
                  height: 64,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Try ChatGPT",
                        style: TextStyle(
                            color: Color(0xFFFF8BFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .03,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 24,
                        color: Color(0xFFFF8BFF),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFFFF8BFF),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

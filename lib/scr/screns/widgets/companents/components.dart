



import 'package:flutter/material.dart';

class Companents extends StatefulWidget {
  final String text;
  final String iconpaht;
  const Companents({Key? key, required this.text, required this.iconpaht,}) : super(key: key);

  @override
  State<Companents> createState() => _CompanentsState();
}

class _CompanentsState extends State<Companents> {
  bool res = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          res = !res;
        });
      },
      child: Container(
        height: 40,
        width: 190,
        decoration: BoxDecoration(
            border: Border.all(color: res? Colors.white : Colors.transparent)
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image(image: AssetImage(widget.iconpaht),)),
            Expanded(flex: 3,child: Text(widget.text,style: TextStyle(color: Colors.white,fontSize: 16),)),
          ],
        ),
      ),
    );
  }
}

import 'package:application/contact.dart';
import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("About"),
    ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ContactView()));
          },
          child:Text("CONTACT VIEW") ),
      ),
    );
  }
}
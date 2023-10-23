import 'package:application/home.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: Text("Contact"),
    ),
    body: StreamBuilder(stream: getSensorData(), builder: (context,snapshot) {
      if (snapshot.hasData) {
        
      return Center(child: Text(snapshot.data.toString()),);
      }else{
       return Center(child: CircularProgressIndicator(),);
      }
    }
    ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     child:Text("Go Back") ),
      // ),
    );
  }
}
Stream<int>getSensorData() async*{
  for (var i = 0; i < 20; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
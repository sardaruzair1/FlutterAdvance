import 'package:application/about.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: Text("Home"),
    ),
    body: FutureBuilder(future: getUserCount(), builder: (context,snapshot){
      if (snapshot.hasData) {
        return Center(child: Text(snapshot.data.toString()),);
      }else{
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    }),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () async {
      //       //  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutView()));
      //       print( await getUserCount());
      //     },
      //     child:Text("ABOUT VIEW") ),
      // ),
    );
  }
}

Future<int> getUserCount() async {
  await Future.delayed(Duration(seconds: 3));
  return 5;
}
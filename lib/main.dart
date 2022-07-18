import 'package:flutter/material.dart';
import 'package:loginregistrasi/ui_view/Login.dart';
import 'package:loginregistrasi/ui_view/Registrasi.dart';
import 'package:loginregistrasi/ui_view/splashscreen.dart';
import 'ui_view/Login.dart';
import 'ui_view/Registrasi.dart';
import 'ui_view/splashscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Registrasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage (title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.android, color: Colors.white,size:45,),
            SizedBox(height: 200,),
            Text("Selamat Datang To Flutter", style: TextStyle(color:Colors.white,fontSize: 22)),
            SizedBox(height: 10,),
            Text("Get Real Time Update About What", style: TextStyle(color:Colors.white,fontSize: 18)),
            Text("Maters to You",style: TextStyle(color:Colors.white, fontSize: 18)),
            SizedBox(height: 20,),
            MaterialButton(
              minWidth: 210,
              color: Colors.white,
              textColor: Colors.lightBlue,
              child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>SignUp(title: '',)
                ));
              },
            ),
            FlatButton(
              child:Text("Log in", style:TextStyle(color:Colors.white, fontWeight:FontWeight.bold,fontSize:18),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Login(title:'',)
                )
                );
              },

            )
          ],
        ),
      ),
    );
  }
}



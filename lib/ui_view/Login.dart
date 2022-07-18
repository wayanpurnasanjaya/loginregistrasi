import 'package:flutter/material.dart';
import 'package:loginregistrasi/ui_view/Registrasi.dart';
import 'package:fluttertoast/fluttertoast.dart';

class  Login extends StatelessWidget {
  const Login ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Container(
              padding: EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height:10,),
            Container(
              padding:EdgeInsets.all(10),
              width: 250,
              color: Colors.white,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              color: Colors.white,
              child: Text("Login", style: TextStyle(color: Colors.lightBlue),),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("Not a member? signup now", style: TextStyle(color:Colors.white),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>SignUp(title: '',)
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}

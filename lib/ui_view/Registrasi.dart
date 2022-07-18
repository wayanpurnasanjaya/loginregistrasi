import 'package:flutter/material.dart';
import 'package:loginregistrasi/ui_view/Login.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.black87,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Fullname",
                      hintStyle: TextStyle(color:Colors.white),
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.black87,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color:Colors.white),
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height:10,),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.black87,
                width: 250,
                child: TextFormField(
                  decoration:InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color:Colors.white),
                      border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                padding:EdgeInsets.all(20),
                minWidth: 250,
                child:Text("REGISTER",style: TextStyle(color: Colors.white),),
                color: Colors.black,
                onPressed: (){},
              ),
              FlatButton(
                child: Text("Alredy registered! Login me", style: TextStyle(color:Colors.white),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>Login(title: '',)));
                },
              ),


            ]
        ),
      ),
    );
  }
}

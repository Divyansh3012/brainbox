import 'package:brainbox/views/signin.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  late String email, password, name;


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
              children: [
                Spacer(),
                TextFormField(
                  validator: (val){
                    return val!.isEmpty ? "Enter Name" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                  onChanged: (val){
                    name = val;
                  },
                ),
                SizedBox(height: 6,),
                TextFormField(
                  validator: (val){
                    return val!.isEmpty ? "Enter Email" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Email"
                  ),
                  onChanged: (val){
                    email = val;
                  },
                ),
                SizedBox(height: 6,),
                TextFormField(
                  validator: (val){
                    return val!.isEmpty ? "Enter Password" : null;
                  },
                  decoration: InputDecoration(
                      hintText: "Password"
                  ),
                  onChanged: (val){
                    password = val;
                  },
                ),
                SizedBox(height: 14,),

                GestureDetector(
                  onTap: (){
                    
                  },
                  child: GestureDetector(
                    onTap: (){
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        alignment: Alignment.center,
                        child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16),),
                      );
                    },
                  ),
                ),
                SizedBox(height: 24,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Text("Already a User ", style: TextStyle(fontSize: 16),),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => SignIn()
                          ));
                        },
                        child: Text("Sign Up", style: TextStyle(fontSize: 16, decoration: TextDecoration.underline),)),
                  ],
                ),

                SizedBox(height: 80,)
              ]),
        ),
      ),
    );
  }
}

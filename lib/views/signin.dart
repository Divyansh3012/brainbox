import 'package:brainbox/views/signup.dart';
import 'package:brainbox/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget{

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn>{
  final _formKey = GlobalKey<FormState>();
  late String email, password;

  signIn(){
    if(_formKey.currentState!.validate()){

    }
  }

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
                    return val!.isEmpty ? "Enter Password" : null;
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
                  onTap: () {
                    child:
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      alignment: Alignment.center,
                      child: Text("Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 16),),
                    );
                  }
                ),
                SizedBox(height: 24,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Text("New to BrainBox ", style: TextStyle(fontSize: 16),),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context) => SignUp()
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
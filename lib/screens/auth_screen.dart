import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget{
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
  return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen>{
  var _isLogin=true;// var to check iff the user already have an account (login)or needs to sign up 
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                  left: 20,
                  right: 20,
                ),
                width: 200,
                child: Image.asset('assets/images/chat.png'),

              ),
              Card(
                margin: EdgeInsets.all(20),
                 child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Form(
                    child: Column(children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                        ),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                      
                      ),
                      const SizedBox(height: 10,),
                         TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password'
                        ),
                        obscureText: true,// to hide the password 
                        ),

                        const SizedBox(height: 12,),
                      ElevatedButton(onPressed: (){

                      }, 
                      child:Text(_isLogin?'Login':'Signup')
                      ),

                      TextButton(onPressed: (){
                        setState(() {
                          _isLogin =!_isLogin;
                        });
                      },
                       child: Text(_isLogin?
                       'Create an Account':
                       'I alrready have an account')
                       )


                      
                      
                    ],),
                  ),
                 ),
              )
            ],
          ),
        ),
      ),
     );
  }
}
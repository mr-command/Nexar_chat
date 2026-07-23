import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nexar_platform/components/formWidgets.dart';
import 'package:nexar_platform/screens/SignupScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context,) {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Login",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            Text("Log in into your account NOW!",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Container(
              decoration: BoxDecoration(
                // border: Border.all()
              ),
              width: 350,
              height: 600,
              padding: EdgeInsets.all(16),
              child: Form(
                child: Column(
                  children: [
                    TextfieldWidget(username, "username"),
                    SizedBox(height: 40,),
                    PasswordfieldWidget(password, "password",),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("Forgot password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)],
                    ),
                    SizedBox(height: 40,),
                    submitFormbtn(),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have any account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        TextButton(
                          onPressed: (){
                            Get.to(Signupscreen());
                          },
                          child: Text("SignUp",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                          )
                      ],
                    ),
                    SizedBox(height: 16,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 1,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10,),
                        Text("or",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
                        SizedBox(width: 10,),
                        Container(
                          width: 100,
                          height: 1,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.g_mobiledata_outlined,size: 50,),
                        Icon(Icons.facebook,size: 40,),
                        Icon(Icons.apple,size: 40,),
                      ],
                    )

      
      
                  ],
                ),
              )
              
            ),
          ],
        ),
      ),
    );
  }
}
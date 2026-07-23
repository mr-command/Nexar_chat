import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nexar_platform/components/formWidgets.dart';
import 'package:nexar_platform/screens/LoginScreen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});


  @override
  Widget build(BuildContext context) {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController cpassword = TextEditingController();
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("SignUP",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
            Text("Sign up and create your account NOW!",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
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
                    SizedBox(height: 40,),
                    PasswordfieldWidget(cpassword, "reapeat paasword",),
                    // SizedBox(height: 16,),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [Text("Forgot password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)],
                    // ),
                    SizedBox(height: 40,),
                    submitFormbtn(),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Alraady have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        TextButton(
                          onPressed: (){
                            Get.to(LoginScreen());
                          },
                          child: Text("Login",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),)
                          )
                      ],
                    ),
      
      
      
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
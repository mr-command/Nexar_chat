import 'package:flutter/material.dart';
import 'package:nexar_platform/services/api_services.dart';
import 'package:nexar_platform/services/providers.dart';

Widget TextfieldWidget(TextEditingController controller,String hint){
  return Container(
    width: 340,
    height: 60,
    child: TextField(
      controller: controller,
      
      
      // maxLength: 50,
      decoration: InputDecoration(
        
        fillColor: Colors.grey[100],
        filled: true,
        label: Text(hint),
        
        // focusColor: Colors.cyanAccent[300],
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(24, 24)),
          borderSide: BorderSide(color: Colors.grey[100]!)
          
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(24, 24)),
          borderSide: BorderSide(color: Colors.grey[400]!)
        ),
        // hintText: hint,
        prefixIcon: Icon(Icons.person,size: 16,),
        
        // border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),
          )
      ),
  );
}


Widget PasswordfieldWidget(TextEditingController controller,String hint){

  return Container(
    width: 340,
    height: 60,
    child: TextField(
      
      controller: controller,
      
      decoration: InputDecoration(
        fillColor: Colors.grey[100],
        
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(24, 24)),
          borderSide: BorderSide(color: Colors.grey[100]!)
          
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(24, 24)),
          borderSide: BorderSide(color: Colors.grey[400]!)
        ),
        label: Text(hint),
        // focusColor: Colors.cyanAccent[300],
        
        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),
        prefixIcon: Icon(Icons.lock,size: 16,)
          )
      ),
  );
}

Widget submitFormbtn(TextEditingController username,TextEditingController email, TextEditingController password){
  return TextButton(
    onPressed: (){
      registerUser(username.text, email.text, password.text);
    },
     style: TextButton.styleFrom(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      fixedSize: Size(250, 52)
     ),
     child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
  );
}
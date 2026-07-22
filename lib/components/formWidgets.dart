import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexar_platform/logic/providers.dart';

Widget TextfieldWidget(TextEditingController controller,String hint){
  return TextField(
    controller: controller,
    
    // maxLength: 50,
    decoration: InputDecoration(
      label: Text(hint),
      
      focusColor: Colors.cyanAccent[300],
      hintText: hint,
      prefixIcon: Icon(Icons.person),
      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),
        )
    );
}


Widget PasswordfieldWidget(TextEditingController controller,String hint,WidgetRef ref){
  bool isVisible = ref.watch(isVisiblaPasswordProvider);
  return TextField(
    
    controller: controller,
    obscureText: !isVisible,
    decoration: InputDecoration(
      
      label: Text(hint),
      focusColor: Colors.cyanAccent[300],
      
      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),
      prefixIcon: Icon(Icons.lock)
        )
    );
}


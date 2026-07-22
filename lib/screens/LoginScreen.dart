import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nexar_platform/components/formWidgets.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all()
        ),
        width: 300,
        height: 600,
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              TextfieldWidget(username, "username"),
              SizedBox(height: 50,),
              PasswordfieldWidget(password, "password",ref)
            ],
          ),
        )
        
      ),
    );
  }
}
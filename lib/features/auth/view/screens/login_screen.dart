import 'package:flutter/material.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/widgets/auth_button.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/widgets/auth_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Header Text
              const Text(
                'Log In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 2, 22, 58),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //Image
              Image.asset(
                'assets/images/lost_and_found_bgrm.png',
                height: 200,
              ),
              const SizedBox(
                height: 16,
              ),
              //Email Text field
              AuthFormField(
                hintText: 'Enter your Email',
                controller: emailController,
                topText: 'Email',
                hintIcon: Icons.mail,
              ),
              const SizedBox(
                height: 10,
              ),
              //PassWord Text Field
              AuthFormField(
                hintText: 'Enter your Password',
                controller: passwordController,
                topText: 'password',
                hintIcon: Icons.lock,
              ),
              const SizedBox(
                height: 10,
              ),
              //Forgot Password
              Container(
                constraints: const BoxConstraints(maxWidth: 450),
                width: double.infinity,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //Login Button
              AuthButton(buttonText: 'Login', onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              //Signup Page text
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have a Account? ',
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                  ),
                  Text(
                    'SignUp',
                    style: TextStyle(fontWeight: FontWeight.w500,color:Colors.blue ,fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

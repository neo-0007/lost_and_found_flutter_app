import 'package:flutter/material.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/widgets/auth_button.dart';
import 'package:lost_and_found_flutter_app/features/auth/view/widgets/auth_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailNameController = TextEditingController();
    TextEditingController passwordNameController = TextEditingController();
    TextEditingController cPasswordNameController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Signup Text
            const Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 2, 22, 58),
              ),
            ),
            const SizedBox(height: 30),
            //First Name & Last Name
            Row(
              children: [
                Expanded(
                  child: AuthFormField(
                      controller: firstNameController, topText: 'FirstName',
                      ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: AuthFormField(
                      controller: lastNameController, topText: 'LastName'),
                )
              ],
            ),
            const SizedBox(height: 10,),
            AuthFormField(controller: emailNameController, topText:'Email',
            hintIcon: Icons.email,hintText: 'Enter your Email',
            ),
            const SizedBox(height: 10,),
            //Email
            AuthFormField(controller: passwordNameController, topText:'Password',
            hintIcon: Icons.lock,
            hintText: 'Enter Your Password',
            ),
            const SizedBox(height: 10,),
            //Password
            AuthFormField(controller: cPasswordNameController, topText:'Confirm Password',
            hintIcon: Icons.lock,
            hintText: 'Enter your Password Again',
            ),
            const SizedBox(height: 30,),
            //Confirm Password
            AuthButton(buttonText: 'SignUp', onPressed: (){}),
            const SizedBox(height: 15,),
            //Signup Button
            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have a Account? ',
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),
                  ),
                  Text(
                    'Signin',
                    style: TextStyle(fontWeight: FontWeight.w500,color:Colors.blue ,fontSize: 14),
                  ),
                ],
              ),
            //Signin text
          ],
        ),
      ),
    );
  }
}

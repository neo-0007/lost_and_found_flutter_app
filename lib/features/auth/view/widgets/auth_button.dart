import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.buttonText, required this.onPressed});

  final String buttonText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        minimumSize:const Size(450, 55),
        maximumSize: const Size(double.infinity,55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        )
      ),
      onPressed: onPressed,
      child:Text(buttonText,style:const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
    );
  }
}

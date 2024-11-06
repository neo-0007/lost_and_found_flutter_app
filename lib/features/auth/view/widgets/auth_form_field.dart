import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  const AuthFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.topText,
    required this.hintIcon,
  });

  final String hintText;
  final TextEditingController controller;
  final String topText;
  final IconData hintIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 450),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  topText,
                  style: const TextStyle(
                      color: const Color.fromARGB(202, 2, 22, 58),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Opacity(opacity: 0.4, child: Icon(hintIcon)),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                color: Color.fromARGB(70, 0, 0, 0),
              ),
              filled: true,
              fillColor: const Color.fromARGB(10, 78, 143, 255),
              enabled: true,
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromARGB(150, 78, 143, 255),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromARGB(50, 78, 143, 255),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}

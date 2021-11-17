import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.hintText = 'Label',
    this.obscureText = false,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value == null) {
            return 'Input field cannot be empty';
          }
        },
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyText2,
            focusColor: Theme.of(context).primaryColor),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shvedi_learning_landing_page/constants.dart';

extension extString on String {

  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp = new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword{
    final passwordRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull{
    return this!=null;
  }

  bool get isValidPhone{
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}


class StudentsSignupFormField extends StatelessWidget {
  StudentsSignupFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
    required this.fieldWidth,

  }) : super(key: key);

  final hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final double fieldWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: fieldWidth,
        child: TextFormField(
          style: const TextStyle(color: warmWhite),
          textAlign: TextAlign.center,
          inputFormatters: inputFormatters,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: coldWhite),
          ),
        ),
      ),
    );
  }
}

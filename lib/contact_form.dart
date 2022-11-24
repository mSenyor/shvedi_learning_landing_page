import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shvedi_learning_landing_page/constants.dart';
import 'package:shvedi_learning_landing_page/student_signup_form_field.dart';


class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
    this.screenWidth,
    this.screenHeight,
  }) : super(key: key);

  final double? screenWidth;
  final double? screenHeight;

  @override
  State<ContactForm> createState() => _ContactFormState();
}


class _ContactFormState extends State<ContactForm> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double fieldSize = GetFieldSize(3.0, width, 10.0);
    // return Text("debug1");
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              StudentsSignupFormField(
                hintText: "נייד",
                fieldWidth: fieldSize,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(
                      r"[0-9]",
                    ),
                  ),
                ],
                validator: (val) {
                  if (val!.isValidPhone)
                    return "המספר אינו תקין";
                },
              ),
              StudentsSignupFormField(
                hintText: "אימייל",
                fieldWidth: fieldSize,
                validator: (val) {
                  if (val!.isValidEmail)
                    return "כתובת האימייל אינה תקינה";
                },
              ),
              StudentsSignupFormField(
                hintText: "שם",
                fieldWidth: fieldSize,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(
                        r"[a-zA-Z]+|\s"
                    ),
                  ),
                ],
                validator: (val) {
                  if (val!.isValidName)
                    return "שם לא תקין";
                },
              ),
            ],
          ),
          SizedBox(
            width: 200.0,
            height: 50.0,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: coldWhite,
                textStyle: TextStyle(
                  color: primaryColor,
                )
              ),
              onPressed: (){},
              child: Text(
                'חזרו אלי',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

double GetFieldSize(double numberOfFields, double screenSize, double emptyPercent) {
  double workableSize = (100-emptyPercent)*(screenSize/100);
  return workableSize/numberOfFields;
}
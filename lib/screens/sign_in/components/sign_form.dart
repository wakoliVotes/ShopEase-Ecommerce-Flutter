



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? password;
  bool? remember = false;
  final List<String> errors = [];

  void addError({String? error}) {
    if(!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if(errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30),
            ),
            Row(
              children: [
                Checkbox(
                    value: remember,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value;
                      });
                    }
                    ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context,
                      ForgotPasswordScreen.routName
                  ),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),
                  ),
                )
              ],
            ),
            FormError(errors: errors),
            SizedBox(height: getProportionateScreenHeight(20)),
            OutlinedButton(

                onPressed: () {
                  if(_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  //   if all are valid then go to success screen
                    Navigator.pushNamed(context, LoginSuccessScreen.routName);
                  }
                },
                child: Text('Continue')
            )
          ],
        ),
    );
  }
}


TextFormField buildPasswordFormField() {
  return TextFormField(
    obscureText: true,
    onSaved: (newValue) => password = newValue,
    onChanged: (value) {
      if(value.isNotEmpty) {
        removeError(error: kPassNullError);
      } else if (value.length >= 8) {
        removeError(error: kShortPassError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Enter your password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(
        Icons.lock
      )
    ),
  );
}



TextFormField buildEmailFormField(){
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    onSaved: (newValue) => email = newValue,
    onChanged: (value) {
      if(value.isNotEmpty) {
        removeError(error: kEmailNullError);
      } else if (emailValidatorRegExp.hasMatch(value)) {
        removeError(error: kInvalidEmailError);
      }
      return null;
    },
    validator: (value) {
      if(value!.isEmpty) {
        addError(error: kEmailNullError);
        return "";
      } else if (!emailValidatorRegExp.hasMatch(value)){
        addError(error: kInvalidEmailError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Email",
      hintText: "Enter your email",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(
        Icons.mail
      )
    ),
  )
}
import 'package:flutter/material.dart';
import 'package:shopease_ecommerce/constants.dart';
import 'package:shopease_ecommerce/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? confirm_password;
  bool remember = false;

  final List<String?> errors = [];

  void addError({String? error}) {
    if(!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if(errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
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
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasswordField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          OutlinedButton(
              child: const Text(
                  'Continue'
              ),
            onPressed: () {
                if(_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // If all are valid then go to the success screen
                  Navigator.pushNamed(context, CompleteProfileScreen.routName);
                }
              },
          )
        ],
      ),
    );
  }

TextFormField buildConfirmPasswordField(){
  return TextFormField(
    obscureText: true,
    onSaved: (newValue) => confirm_password = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kPassNullError);
      } else if (value.isNotEmpty && password == confirm_password) {
        removeError(error: kMatchPassError);
      }
      confirm_password = value;
    },
    validator: (value) {
      if(value!.isEmpty) {
        addError(error: kPassNullError);
        return "";
      } else if ((password != value)) {
        addError(error: kMatchPassError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      labelText: "Confirm Password",
      hintText: "Re-enter ypur password",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon:   Icon(
        Icons.lock
      )
    ),
  );
}

TextFormField buildPasswordFormField() {
  return TextFormField(
    obscureText: true,
    onSaved: (newValue) => password = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kPassNullError);
      } else if (value.length >= 8) {
        removeError(error: kShortPassError);
      }
      password = value;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kPassNullError);
        return "";
      } else if (value.length < 8) {
        addError(error: kShortPassError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Password",
      hintText: "Enter your password",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(
        Icons.lock
      ),
    ),
  );
}

TextFormField buildEmailFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    onSaved: (newValue) => email = newValue,
    onChanged: (value) {
      if (value.isNotEmpty) {
        removeError(error: kEmailNullError);
      } else if (emailValidatorRegExp.hasMatch(value)) {
        removeError(error: kInvalidEmailError);
      }
      return;
    },
    validator: (value) {
      if (value!.isEmpty) {
        addError(error: kEmailNullError);
        return "";
      } else if (!emailValidatorRegExp.hasMatch(value)) {
        addError(error: kInvalidEmailError);
        return "";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Email",
      hintText: "Enter your email",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
      suffixIcon: Icon(
        Icons.mail
      ),
    ),
  );
}
}


import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  //-----------------Functions---------------
  void trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('Validation failed');
    }
  }

  void submitForm() {
    print('First Name: $firstName');
    print('Last Name: $lastName');
    print('Email: $email');
    print('Password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter First Name'),
                    key: const ValueKey('firstName'),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'First name should not be empty';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      firstName = value!;
                    },
                  ), //01....First name
                  TextFormField(
                    decoration:
                        const InputDecoration(hintText: 'Enter Last Name'),
                    key: const ValueKey('lastName'),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Last name should not be empty';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      lastName = value!;
                    },
                  ), //02.... LastName
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Enter Email '),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Email should not be empty';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                  ), //03..... email
                  TextFormField(
                    obscureText: true,
                    decoration:
                        const InputDecoration(hintText: 'Enter Password '),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if ((value?.length ?? 0) <= 5) {
                        return 'Minimum length of password should be 6';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  //04....... password
                  TextButton(
                      onPressed: () {
                        trySubmit();
                      },
                      child: const Text('Submit'))
                ],
              )),
        ),
      ),
    );
  }
}

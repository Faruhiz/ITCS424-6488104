// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Image(
                image: AssetImage('assets/profile.png'),
                height: 100,
              ),
              Text('Login', style: TextStyle(fontSize: 20, color: Colors.blue)),
              Padding(
                padding: EdgeInsets.all(10),
                child: FormBuilder(
                  key: _formKey,
                  initialValue: {'username': '', 'password': ''},
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'username',
                        decoration:
                            InputDecoration(labelText: 'Email', filled: true),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(context,
                              errorText: 'Please enter your email'),
                          FormBuilderValidators.email(context),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

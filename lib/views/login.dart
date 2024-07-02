import 'package:application/utils/textEditting.dart';
import 'package:application/views/home.dart';
import 'package:application/views/homePage.dart';
import 'package:application/views/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  final Credentials credentials = Credentials();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF828689), Color(0xFF4F5962), Color(0xFF1F2F3C)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  const Text(
                    "Signin",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    hintText: 'Email',
                    controller: emailController,
                    prefixIcon: Icons.email_rounded,
                    focusNode: _focusNode1,
                    validator: (value) => credentials.emailError(value),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    hintText: "Password",
                    controller: passwordController,
                    prefixIcon: Icons.lock,
                    focusNode: _focusNode2,
                    validator: (value) => credentials.passwordError(value),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (context) => const RegistrationView()),
                        );
                      },
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 40,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      child: const Text(
                        "Signin",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white38,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Row(children: <Widget>[
                      Expanded(child: Divider()),
                      Text(
                        "Or Sign In with",
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(child: Divider()),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      children: [
                        Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                               ),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.facebook,
                                      color: Colors.blue,size: 50,
                                    )),
                            ),
                            ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Credentials {
  static final RegExp userEmail =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  String? emailError(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fill this field';
    } else if (!userEmail.hasMatch(value)) {
      return 'Invalid Email';
    }
    return null;
  }

  String? passwordError(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fill this field';
    } else if (value.length < 5) {
      return 'Password must be at least 5 characters long';
    }
    return null;
  }
}

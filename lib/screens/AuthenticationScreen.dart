import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key, this.isLogin = true});
  final bool? isLogin;

  @override
  Widget build(BuildContext context) {
    bool loginStatus = isLogin ?? true;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loginStatus ? "Login" : 'Create Account',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                indent: 12,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.g_translate,
                    size: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.facebook,
                    size: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter Name',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Confirm Password',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MaterialButton(
                onPressed: loginStatus ? () {} : () {},
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 100,
                  right: 100,
                  bottom: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.red,
                child: Text(
                  loginStatus ? 'Login' : "Sign Up",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

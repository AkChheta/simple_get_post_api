import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RegisterApiPage extends StatefulWidget {
  const RegisterApiPage({super.key});

  @override
  State<RegisterApiPage> createState() => _RegisterApiPageState();
}

class _RegisterApiPageState extends State<RegisterApiPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

// {
//     "email": "eve.holt@reqres.in",
//     "password": "pistol"
// }
  void register(String email, password) async {
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/register'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print(data['token']);
        print('Register successfully');
      } else {
        print('failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Api Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                register(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text('Register'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

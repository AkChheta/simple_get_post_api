import 'package:flutter/material.dart';
import 'package:simple_get_post_api/get_api/example_four.dart';
import 'package:simple_get_post_api/get_api/example_two.dart';
import 'package:simple_get_post_api/post_api/login_api_page.dart';
import 'package:simple_get_post_api/post_api/register_api_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterApiPage()));
                },
                child: const Text('Register Api')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginApiPage()));
                },
                child: const Text('Login Api')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExampleFour()));
                },
                child: const Text('example Four GetApi')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExampleTwo()));
                },
                child: const Text('Example Two GetApi'))
          ],
        ),
      ),
    );
  }
}

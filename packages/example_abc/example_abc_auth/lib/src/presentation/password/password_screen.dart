import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Password'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Buat Password'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

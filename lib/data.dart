import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  final String email;
  final String password;

  Data({this.email, this.password});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'E-sewa ID : ' + email,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password : ' + password,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}

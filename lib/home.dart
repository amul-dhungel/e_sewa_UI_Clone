import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: 200.0,
                  height: 100.0,
                  child: Image(
                    image: AssetImage('lib/assets/esewa.png'),
                  )),
              Text(
                'Welcome,',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 33.0,
                ),
              ),
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 17.0,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'eSewa ID (Mobile/Email)',
                style: TextStyle(
                  letterSpacing: 0.3,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(0.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty)
                      return 'This field cannot be empty';
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    labelText: 'Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Password/MPIN',
                style: TextStyle(
                  letterSpacing: 0.3,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(0.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty)
                      return 'This field cannot be empty';
                    else
                      return null;
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 1.0),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    labelText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: true,
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    onChanged: (value) {},
                  ),
                  Text('Remember Me',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 15.0,
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                    child: Text('Forgot MPIN ?',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Center(
                child: Container(
                    width: 420.0,
                    height: 55.0,
                    child: RaisedButton(
                      onPressed: () {
                        if (_globalKey.currentState.validate()) {}
                      },
                      color: Colors.green,
                      child: Container(
                          child: Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ))),
                    )),
              ),
              SizedBox(height: 25.0),
              Row(children: <Widget>[
                Container(
                    height: 25,
                    width: 25,
                    child: Image.asset('lib/assets/fingerprint.png')),
                SizedBox(width: 15),
                Center(
                  child: Text('Touch here to use fingerprint sensor to login',
                      style: TextStyle(
                        fontSize: 15.0,
                        letterSpacing: 0.5,
                      )),
                )
              ]),
              SizedBox(height: 30.0),
              Center(
                child: Container(
                  child: Text('Register For Free',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

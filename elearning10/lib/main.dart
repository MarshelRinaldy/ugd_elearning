import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'images/logoElearning.png',
            width: 400,
            height: 400,
          ),
          SizedBox(height: 0.0),
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 1.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text('Forgot Password?'),
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFFc72358)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            child: Ink.image(
              image: AssetImage(
                '',
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            "Don't have an account?",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 0.0),
          TextButton(
            onPressed: () {},
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(
          height: 50,
        ),
        const Center(
            child: Icon(
          Icons.note_alt_outlined,
          size: 150,
          color: Colors.blue,
        )),
        Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter username please !',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.security),
                  hintText: 'Enter password please !',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Text('If you haven\'t an account?'),
                    InkWell(
                      child: Text(
                        'Click here',
                        style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                      onTap: (() {
                        Navigator.of(context).pushNamed('signup');
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: 200,
                child: ElevatedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: (() {
                 Navigator.of(context).pushReplacementNamed('home');
                  }),
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

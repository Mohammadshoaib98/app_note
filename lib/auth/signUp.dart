import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView( children: [
            const SizedBox(height: 50,),
        const Center(
            child: Icon(
          Icons.note_alt_outlined,
          size: 150,
          color: Colors.blue,
        )),
        Container(
          padding:const EdgeInsets.all(20),
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
                height: 15,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter email please !',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1),
                  ),
                ),
              ), const SizedBox(
                height: 15,
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
                margin:const EdgeInsets.all(10),
                child: Row(
                  children: [
                   const Text('If you have an account?'),
                    InkWell(
                      child: Text(
                        'Click here',
                        style:TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),onTap: (() {
                        Navigator.of(context).pushNamed('login');
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
                    'Sign Up',
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

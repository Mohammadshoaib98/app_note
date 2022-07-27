
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {'note': 'Do you like your university ? No', 'image': 'images/food0.jpg'},
    {'note': 'do you like your university ? No', 'image': 'images/food0.jpg'},
    {'note': 'do you like your university ? No', 'image': 'images/food0.jpg'},
    {'note': 'do you like your university ? No', 'image': 'images/food0.jpg'},
    {'note': 'do you like your university ? No', 'image': 'images/food0.jpg'},
    {'note': 'do you like your university ? No', 'image': 'images/food0.jpg'},
    {'note': 'do you like your university ? No', 'image': 'images/food0.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ), 
      body: Container(
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key:Key ('$index'),
              child: ListNotes(
                notes: notes[index],
              ),
            );
          },
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {
            Navigator.of(context).pushNamed('addnotes');
          }),
    );
  }
}

class ListNotes extends StatelessWidget {
  final notes;
  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.5),
      child: ListTile(
          title: Text('Title'),
          subtitle: Text('${notes['note']}'),
          leading: Image.asset('${notes['image']}'),
          trailing: InkWell(
            child: const Icon(Icons.edit),
            onTap: () {},
          )),
    );
  }
}

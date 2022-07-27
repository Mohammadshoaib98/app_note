import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Notes')),
      body: Column(
        children: [
          Form(
            child: Column(
              children: [
                TextFormField(
                  maxLength: 22,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text('add title Node'),
                    prefixIcon: Icon(Icons.note),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 4,
                  maxLength: 200,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    label: Text('add title Node'),
                    prefixIcon: Icon(Icons.note),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    child: const Text('Add Image for note'),
                    onPressed: () {
                      showBottomSheet(context);
                    }),
                ElevatedButton(child: Text('Add Note'), onPressed: () {})
              ],
            ),
          ),
        ],
      ),
    );
  }
}

showBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 230,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Please choose Image',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.photo_outlined,
                        size: 20,
                      ),
                    ),
                    Text(
                      'From Gallary',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: const Icon(
                        Icons.camera,
                        size: 20,
                      ),
                    ),
                    Text(
                      'From Camera',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    },
  );
}

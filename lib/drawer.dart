import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        foregroundColor: Colors.white,
      ),
      drawer: buildGroupDrawer(context), // Memanggil buildGroupDrawer
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        shrinkWrap: true,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.blue[200],
              ),
              alignment: Alignment.center,
              child: Text(
                'Materi $index',
                style: const TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }),
      ),
    );
  }

  // Fungsi buildGroupDrawer untuk menampilkan menu Drawer
  Widget buildGroupDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader dengan teks nama
           DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: const Text(
              'Elsada Adelia Talista', // Nama yang ditampilkan di header drawer
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
          // ExpansionTile untuk menampilkan kategori "Materi"
          ExpansionTile(
            title: const Text('Materi'),
            children: [
              ListTile(
                title: const Text('Materi 1'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Materi 2'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Materi 3'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Materi 4'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Materi 5'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
            ],
          ),
          // ExpansionTile untuk menampilkan kategori "Tugas"
          ExpansionTile(
            title: const Text('Tugas'),
            children: [
              ListTile(
                title: const Text('Tugas 1'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Tugas 2'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Tugas 3'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Tugas 4'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
              ListTile(
                title: const Text('Tugas 5'),
                onTap: () {
                  Navigator.pop(context); // Menutup drawer ketika item dipilih
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
      body: Center(
        child: Text('pemrograman mobile $title'),
      ),
    );
  }

  // Fungsi buildGroupDrawer untuk menampilkan menu Drawer
  Widget buildGroupDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              accountName: const Text(
                'Elsada Adelia Talista', // Nama yang ditampilkan di header drawer
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              accountEmail: const Text(
                'elsada.xpplg2@gmail.com', // Email contoh untuk tampilan
              ),
              currentAccountPictureSize: const Size.square(40),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: const Text(
                  'E', // Inisial nama
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            // child: const Text('Elsada Adelia Talista',
            // style: TextStyle(color: Colors.white,
            // fontSize: 30.0,
            // ),
            // ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('elsa'),
            subtitle: Text ('12 rpl 2'),
            trailing: Icon(Icons.chevron_right),

          )
          // ExpansionTile untuk menampilkan kategori "Materi"
          // ExpansionTile(
          //   title: const Text('Materi'),
          //   children: [
          //     ListTile(
          //       title: const Text('Materi 1'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 2'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 3'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 4'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 5'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //   ],
          // ),
          // // ExpansionTile untuk menampilkan kategori "Tugas"
          // ExpansionTile(
          //   title: const Text('Tugas'),
          //   children: [
          //     ListTile(
          //       title: const Text('Tugas 1'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 2'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 3'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 4'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 5'),
          //       onTap: () {
          //         Navigator.pop(context); // Menutup drawer ketika item dipilih
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

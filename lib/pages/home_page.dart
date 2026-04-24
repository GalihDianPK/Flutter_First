// File ini berada di dalam folder lib/pages/.
// Folder 'pages' (atau sering juga disebut 'screens') digunakan khusus untuk 
// menyimpan file-file yang menampilkan SATU HALAMAN penuh di layar HP.
import 'package:flutter/material.dart';

// (Catatan Mentor: Biasanya nama class diawali huruf kapital seperti "HomePage", 
// tapi "homepage" tetap bisa berjalan!)
// StatelessWidget berarti halaman ini "Statis". Artinya halamannya diam, 
// tidak bisa mengubah tampilannya sendiri secara otomatis (kecuali kita buat statenya nanti).
class homepage extends StatelessWidget {
  const homepage({super.key});

  // Fungsi build() adalah kuas lukis kita. Di sinilah kita "menggambar" UI di layar.
  @override
  Widget build(BuildContext context) {
    // Scaffold adalah "Kanvas Putih" untuk satu halaman.
    // Scaffold otomatis membagi layar menjadi beberapa bagian standar aplikasi:
    // Atas (appBar), Tengah (body), Bawah (bottomNavigationBar), dan tombol ngambang (floatingActionButton).
    return Scaffold(
      
      // 1. AppBar: Bagian atas aplikasi (Header / Top bar)
      appBar: AppBar(
        title: const Text("Aplikasi Keuangan"),
        backgroundColor: Colors.blue, // Warna latar belakang AppBar
        foregroundColor: Colors.white, // Warna teks (title) di dalam AppBar
      ),
            
      body: Column(
        children: [
          
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15),
            
            ),
            child: const Column(
              children: [
                Text(
                  "Halo! ini adalah halaman utama!",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  "Rp 5.000.000",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ) 
              ]
            ),
            
          )
        ]
      )
    );
  }
}

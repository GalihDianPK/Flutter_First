// main.dart adalah file PERTAMA yang dijalankan oleh Flutter saat aplikasi dibuka.
// Di sinilah jantung utama aplikasi kita berada.
import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Mengambil kode halaman utama yang ada di folder pages

// Fungsi main() adalah titik awal (entry point). Aplikasi selalu mulai dari sini.
void main() {
  runApp(const MyApp()); // Menjalankan aplikasi (widget) bernama MyApp
}

// MyApp adalah "Bungkus Utama" dari seluruh aplikasi kita.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp adalah kerangka dasar aplikasi bergaya Google (Material Design).
    // Ini memberikan kita pengaturan dasar seperti navigasi dan tema.
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan pita merah "DEBUG" di pojok kanan atas layar
      // home: menentukan halaman mana yang PERTAMA KALI muncul saat aplikasi dibuka.
      // Kita arahkan ke 'homepage' yang baru saja Anda buat!
      home: const homepage(),
    );
  }
}

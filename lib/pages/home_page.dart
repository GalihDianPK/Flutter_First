import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Keuangan"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // KOTAK SALDO
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
                  "Total Saldo",
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                SizedBox(height: 10),
                Text(
                  "Rp 5.000.000",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
          ),
          
          // JUDUL RIWAYAT TRANSAKSI
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Riwayat Transaksi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          
          const SizedBox(height: 10),

          // DAFTAR TRANSAKSI
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: const [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.arrow_downward, color: Colors.red),
                    title: Text("Beli Nasi Padang"),
                    subtitle: Text("Hari ini"),
                    trailing: Text("- Rp 25.000", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.arrow_upward, color: Colors.green),
                    title: Text("Gaji Bulanan"),
                    subtitle: Text("Kemarin"),
                    trailing: Text("+ Rp 5.000.000", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      
      // TOMBOL TAMBAH
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        // Menampilkan Pop-up Formulir dari bawah layar
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Agar tinggi pop-up menyesuaikan isi
                  children: [
                    const Text(
                      "Tambah Transaksi Baru",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    
                    // Kolom input teks untuk Nama Transaksi
                    const TextField(
                      decoration: InputDecoration(
                        labelText: "Nama Transaksi (Makan, Gaji, dll)",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    
                    // Kolom input teks untuk Nominal (Hanya memunculkan keyboard angka)
                    const TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: "Nominal (Contoh: 50000)",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    // Tombol Simpan
                    SizedBox(
                      width: double.infinity, // Membuat tombol selebar layar
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          // Nanti kita buat logika menyimpannya di sini
                          Navigator.pop(context); // Menutup pop-up setelah ditekan
                        },
                        child: const Text("Simpan Transaksi"),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

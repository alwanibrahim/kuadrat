  import 'dart:io';

void main() async {
  try {
    // Membuat objek file bernama "contoh.txt"
    File file = File('contoh.txt');

    // Membaca isi file sebagai string
    String content = await file.readAsStringSync(); //*ini opsional untuk memasukkan lagi ke variable content

    // Menampilkan isi file ke terminal
    print('Isi file:');
    print(content);
  } 
  // Menangkap error jika file tidak ditemukan
  on FileSystemException {
    print('Error: File tidak ditemukan!');
  }
}

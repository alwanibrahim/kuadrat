import 'dart:io';

void main() {
  try {
    // Membuat atau membuka file bernama "contoh.txt"
    File file = File('contoh.txt');

    // Menulis data ke file
    file.writeAsStringSync('Halo, ini adalah teks yang ditulis ke file!');
    print('File berhasil ditulis.');
  } 
  // Menangkap error jika terjadi kesalahan saat menulis file
  on FileSystemException {
    print('Error: Gagal menulis file!');
  }
}

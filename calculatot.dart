import 'dart:io';

void main() {
  // Menampilkan menu
  print('Kalkulator Sederhana');
  print('1. Tambah');
  print('2. Kurang');
  print('3. Kali');
  print('4. Bagi');
  print('Pilih operasi (1/2/3/4): ');

  // Input pilihan operasi
  String? pilihan = stdin.readLineSync();

  // Meminta input angka pertama
  print('Masukkan angka pertama: ');
  double angka1 = double.parse(stdin.readLineSync()!);

  // Meminta input angka kedua
  print('Masukkan angka kedua: ');
  double angka2 = double.parse(stdin.readLineSync()!);

  double hasil;

  // Melakukan operasi sesuai pilihan
  switch (pilihan) {
    case '1':
      hasil = angka1 + angka2;
      print('Hasil: $angka1 + $angka2 = $hasil');
      break;
    case '2':
      hasil = angka1 - angka2;
      print('Hasil: $angka1 - $angka2 = $hasil');
      break;
    case '3':
      hasil = angka1 * angka2;
      print('Hasil: $angka1 * $angka2 = $hasil');
      break;
    case '4':
      if (angka2 == 0) {
        print('Error: Tidak bisa membagi dengan 0!');
      } else {
        hasil = angka1 / angka2;
        print('Hasil: $angka1 / $angka2 = $hasil');
      }
      break;
    default:
      print('Pilihan tidak valid');
      break;
  }
}

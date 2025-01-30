import 'dart:io';

void main() {
  List<String> names = []; // List untuk menyimpan nama

  print("### Program Daftar Nama ###");
  print("Masukkan nama (ketik 'selesai' untuk berhenti):");

  // Input nama dari pengguna
  while (true) {
    stdout.write("Nama: ");
    String? input = stdin.readLineSync(); // Baca input
    if (input == null || input.toLowerCase() == 'selesai') {
      break; // Keluar dari loop jika pengguna mengetik 'selesai'
    }
    names.add(input); // Tambahkan nama ke List
  }

  // Tampilkan daftar nama
  print("\n### Daftar Nama ###");
  if (names.isEmpty) {
    print("Belum ada nama yang dimasukkan.");
  } else {
    for (int i = 0; i < names.length; i++) {
      print("${i + 1}. ${names[i]}");
    }
  }

  // Cari nama dalam List
  print("\nApakah Anda ingin mencari nama di daftar? (y/n):");
  String? searchOption = stdin.readLineSync();

  if (searchOption != null && searchOption.toLowerCase() == 'y') {
    stdout.write("Masukkan nama yang ingin dicari: ");
    String? searchName = stdin.readLineSync();

    if (searchName != null && names.contains(searchName)) {
      print("Nama '$searchName' ditemukan di daftar.");
    } else {
      print(
        "Nama '$searchName' tidak ditemukan di daftar.");
    }
  }

  print("\nProgram selesai. Terima kasih!");
}
class TempatWisata {
  final String nama;
  final String lokasi;
  final String gambar;

  TempatWisata({
    required this.nama,
    required this.lokasi,
    required this.gambar,
  });
}

List<TempatWisata> tempatWisata = [
  TempatWisata(
    nama: 'Candi Borobudur',
    lokasi: 'Jawa Tengah',
    gambar: 'assets/borobudur.jpg',
  ),
  TempatWisata(
    nama: 'Pura Ulun',
    lokasi: 'Bali',
    gambar: 'assets/bali.jpg',
  ),
  TempatWisata(
    nama: 'Pulau Komodo',
    lokasi: 'Nusa Tenggara Timur',
    gambar: 'assets/komodo.jpg',
  ),
  TempatWisata(
    nama: 'Raja Ampat',
    lokasi: 'Papua Barat',
    gambar: 'assets/raja ampat.jpg',
  ),
  TempatWisata(
    nama: 'Gunung Bromo',
    lokasi: 'Jawa Timur',
    gambar: 'assets/sumeru.jpg',
  ),
];

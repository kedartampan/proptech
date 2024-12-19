import 'package:flutter/material.dart';

class PropertyDetailPage extends StatelessWidget {
  final Map<String, String> property;

  PropertyDetailPage({required this.property});

  @override
  Widget build(BuildContext context) {
    String description = '';

    switch (property['name']) {
      case 'Ruko Samad - Disewakan':
        description = 'Ruko Samad terletak di lokasi strategis di pusat kota, menjadikannya pilihan ideal untuk bisnis Anda. '
            'Dengan desain modern dan fasilitas yang lengkap, ruko ini siap untuk digunakan. Kelebihan lokasi ini adalah dekat '
            'dengan berbagai pusat perbelanjaan dan akses transportasi yang mudah, sehingga menarik banyak pelanggan. '
            'Harga sewa yang kompetitif memberikan kesempatan bagi Anda untuk mengembangkan usaha dengan potensi keuntungan yang tinggi. '
            'Jangan lewatkan kesempatan untuk memiliki ruko yang sempurna untuk bisnis Anda!';
        break;
      case 'Tanah Pak Yanto - Dijual':
        description = 'Tanah Pak Yanto adalah investasi yang sangat menguntungkan dengan luas area yang luas dan akses jalan yang baik. '
            'Terletak di Desa Bumi Harapan, tanah ini berada di kawasan yang sedang berkembang pesat. Ini adalah pilihan yang tepat bagi '
            'Anda yang ingin membangun rumah atau proyek komersial. Lingkungan yang aman dan nyaman dengan berbagai fasilitas publik '
            'yang dekat membuat tanah ini semakin menarik. Dengan harga yang sangat bersaing, Tanah Pak Yanto adalah peluang yang '
            'tidak boleh dilewatkan untuk investasi masa depan Anda!';
        break;
      case 'Ruko Purnama - Disewakan':
        description = 'Ruko Purnama menawarkan ruang komersial yang luas di lokasi strategis di Jl. Ahmad Yani, Balikpapan Selatan. '
            'Cocok untuk berbagai jenis usaha, mulai dari restoran, toko ritel, hingga kantor. Dengan akses yang mudah dan parkir yang '
            'cukup, ruko ini memberikan kenyamanan bagi pemilik dan pelanggan. Lingkungan yang ramai dan berkembang memberikan potensi '
            'tinggi untuk menarik pelanggan. Segera ambil kesempatan untuk menyewa Ruko Purnama dan kembangkan bisnis Anda di tempat yang tepat!';
        break;
      case 'Tanah Mantan - Disewakan':
        description = 'Tanah Mantan menawarkan lokasi yang sangat strategis, hanya beberapa menit dari kawasan Ibu Kota Nusantara (IKN). '
            'Harga yang ditawarkan tentu sangat kompetitif, memungkinkan Anda untuk '
            'berinvestasi dengan potensi keuntungan yang tinggi. Jika Anda mencari tempat untuk membangun bisnis yang sukses dan berkembang, '
            'Tanah Mantan adalah pilihan yang tepat. Manfaatkan kesempatan ini untuk menjadi bagian dari pertumbuhan ekonomi yang sedang berlangsung di kawasan ini!';
        break;
      case 'Tanah Bu Gilang - Dijual':
        description = 'Tanah Bu Gilang adalah pilihan investasi yang sangat menarik. Terletak di Desa Argomulyo, tanah ini memiliki akses yang '
            'baik dan lingkungan yang damai. Luas tanah yang cukup besar memberikan Anda kebebasan untuk merencanakan proyek sesuai keinginan '
            'Anda, baik itu rumah pribadi atau proyek komersial. Dengan harga yang kompetitif, Tanah Bu Gilang menawarkan potensi keuntungan '
            'yang tinggi di masa depan. Jangan lewatkan kesempatan untuk memiliki tanah yang strategis dan berharga ini!';
        break;
      default:
        description = 'Deskripsi tidak tersedia.';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(property['name']!, style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1A237E), Color(0xFF5C6BC0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Text(
                property['name']!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                'Harga: ${property['price']}',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(height: 5),
              Text(
                'Lokasi: ${property['location']}',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              SizedBox(height: 50),
              Text(
                'Deskripsi:\n$description',
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Fitur sewa belum tersedia.')),
                    );
                  },
                  child: Text('Sewa Properti'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0B07FF),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'property_detail_page.dart';

class PropertyListPage extends StatelessWidget { 
  final List<Map<String, String>> properties = [
    {
      'name': 'Ruko Samad - Disewakan',
      'price': 'Rp. 15 Juta/Bulan',
      'location': 'Kilo 15, Balikpapan Utara',
      'image': 'assets/property1.jpg'
    },
    {
      'name': 'Tanah Pak Yanto - Dijual',
      'price': 'Rp. 500 Juta/Meter',
      'location': 'Desa Bumi Harapan, Kecamatan Sepaku',
      'image': 'assets/property2.jpg'
    },
    {
      'name': 'Ruko Purnama - Disewakan',
      'price': 'Rp. 990 Juta/3 Bulan',
      'location': 'Jl. Ahmad Yani, Balikpapan Selatan',
      'image': 'assets/property3.jpg'
    },
    {
      'name': 'Tanah Mantan - Disewakan',
      'price': 'Rp. 800 Juta/2 Bulan',
      'location': 'Desa Bukit Raya, Kecamatan Sepaku',
      'image': 'assets/property4.jpg'
    },
    {
      'name': 'Tanah Bu Gilang - Dijual',
      'price': 'Rp. 3.5 Miliar',
      'location': 'Desa Argomulyo, Kecamatan Sepaku',
      'image': 'assets/property5.jpg'
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
              'Temukan Properti Terbaik',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: properties.length,
                itemBuilder: (context, index) {
                  final property = properties[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PropertyDetailPage(property: property),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.white.withOpacity(0.9),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        leading: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(property['image']!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        title: Text(
                          property['name']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          '${property['price']} - ${property['location']}',
                          style: TextStyle(color: Colors.black87),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
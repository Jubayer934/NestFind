import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Map<String, String>> nearProperties = [
    {
      "image":
          "https://cdn.home-designing.com/wp-content/uploads/2022/05/modern-exterior-1024x767.jpg",
      "title": "The Hill House",
      "address": "Jl. Tebing Tinggi, Bali",
      "distance": "1.2 km",
    },
    {
      "image":
          "https://livingasean.com/wp-content/uploads/2023/12/ACH-House-Exterior-05-%C2%A9Ernesttheofilus-scaled.jpg",
      "title": "ACH House",
      "address": "Surabaya Selatan",
      "distance": "1.8 km",
    },
    {
      "image":
          "https://i0.wp.com/www.emporioarchitect.com/upload/portofolio/desain-rumah-frans-53321423060820103953-0.jpg",
      "title": "J House",
      "address": "Sidoarjo, Jawa Timur",
      "distance": "2.3 km",
    },
    {
      "image":
          "http://twistedsifter.com/wp-content/uploads/2011/02/static-house-jakarta-indonesia-tws-and-partners-29.jpg",
      "title": "Luxury Modern Residence",
      "address": "Jakarta Barat",
      "distance": "3.1 km",
    },
  ];

  final List<Map<String, dynamic>> bestProperties = [
    {
      "image":
          "https://i0.wp.com/www.emporioarchitect.com/upload/portofolio/desain-rumah-frans-53321423060820103953-0.jpg",
      "title": "Mr. Frans Villa House",
      "price": "Rp. 4.800.000.000 / Year",
      "bed": "8 Bedroom",
      "bath": "6 Bathroom",
    },
    {
      "image":
          "https://cdn.home-designing.com/wp-content/uploads/2022/05/modern-exterior-1024x767.jpg",
      "title": "Modern Jakarta Residence",
      "price": "Rp. 3.200.000.000 / Year",
      "bed": "6 Bedroom",
      "bath": "5 Bathroom",
    },
    {
      "image":
          "http://twistedsifter.com/wp-content/uploads/2011/02/static-house-jakarta-indonesia-tws-and-partners-29.jpg",
      "title": "Static House",
      "price": "Rp. 5.500.000.000 / Year",
      "bed": "7 Bedroom",
      "bath": "5 Bathroom",
    },
    {
      "image":
          "https://i0.wp.com/www.emporioarchitect.com/upload/portofolio/desain-rumah-frans-53321423060820103953-0.jpg",
      "title": "RM Casa Jardin",
      "price": "Rp. 2.900.000.000 / Year",
      "bed": "5 Bedroom",
      "bath": "4 Bathroom",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Near from you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See more")),
                ],
              ),
              SizedBox(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearProperties.length,
                  itemBuilder: (context, index) {
                    final property = nearProperties[index];
                    return Container(
                      width: 200,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(property["image"]!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            right: 12,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    property["distance"]!,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 12,
                            bottom: 12,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  property["title"]!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  property["address"]!,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Best for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See more")),
                ],
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: bestProperties.length,
                itemBuilder: (context, index) {
                  final property = bestProperties[index];
                  return Card(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            property["image"]!,
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                property["title"]!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                property["price"],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.blue),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.bed,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      property["bed"],
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.bathtub,
                                    size: 16,
                                    color: Colors.grey,
                                  ),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      property["bath"],
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

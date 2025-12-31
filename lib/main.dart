import 'package:flutter/material.dart';
import 'package:practice/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

String selectedLocation = "Jakarta";
final List<String> locations = ["Jakarta", "Bandung", "Surabaya", "Yogyakarta"];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Location",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              PopupMenuButton(
                offset: const Offset(0, 40),
                onSelected: (String newLocation) {
                  setState(() {
                    selectedLocation = newLocation;
                  });
                },
                  itemBuilder: (BuildContext context) {
                    return [
                      for (String location in locations)
                        PopupMenuItem(
                          value: location,
                          child: Text(
                            location,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                    ];

                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedLocation,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down, color: Colors.black),
                  ],
                ),
              ),
            ],
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: Stack(
                children: [
                  const Icon(
                    Icons.notifications_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                  Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],

          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Search address, or near you",
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.tune, color: Colors.blue),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,

                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    tabs: const [
                      Tab(text: "House"),
                      Tab(text: "Apartment"),
                      Tab(text: "Condo"),
                      Tab(text: "Townhouse"),
                      Tab(text: "Villa"),
                      Tab(text: "Land"),
                      Tab(text: "Office"),
                      Tab(text: "Shop"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        drawer: Drawer(
          backgroundColor: Colors.blue,
          child: ListView(
            padding: EdgeInsets.fromLTRB(10, 50, 0, 0),
            children: [
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text('Home', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person_outline, color: Colors.white),
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.location_on_outlined, color: Colors.white),
                title: Text('Nearby', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.white, height: 32),
              ListTile(
                leading: Icon(Icons.bookmark_outline, color: Colors.white),
                title: Text('Bookmark', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Stack(
                  children: [
                    Icon(Icons.notifications_outlined, color: Colors.white),
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Stack(
                  children: [
                    Icon(Icons.chat_bubble_outline, color: Colors.white),
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                title: Text('Message', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(color: Colors.white, height: 32),
              ListTile(
                leading: Icon(Icons.settings_outlined, color: Colors.white),
                title: Text('Setting', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.help_outline, color: Colors.white),
                title: Text('Help', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.power_settings_new, color: Colors.white),
                title: Text('Logout', style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            HomePage(),
            Center(child: Text("Apartment")),
            Center(child: Text("Condo")),
            Center(child: Text("Townhouse")),
            Center(child: Text("Villa")),
            Center(child: Text("Land")),
            Center(child: Text("Office")),
            Center(child: Text("Shop")),
          ],
        ),
      ),
    );
  }
}

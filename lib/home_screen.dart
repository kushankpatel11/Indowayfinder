import 'package:flutter/material.dart';
import 'package:simple_navigation_app/direction_screen.dart';
// import 'package:simple_navigation_app/main.dart';
import 'package:simple_navigation_app/map_screen.dart';
import 'package:simple_navigation_app/search_screen.dart';
import 'package:simple_navigation_app/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  // double screenWidth = MediaQuery.of(context).size.width;
  // double screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indoor Navigation App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange.shade300,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Map'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen()));
              },
            ),
            ListTile(
              title: Text('Search'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
            ListTile(
              title: Text('Directions'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DirectionsScreen()));
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 232, 179, 130),
                  Color.fromARGB(255, 223, 167, 167),
                ]),
          ),
          // Add padding around the search bar
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          // Use a Material design search bar
          child: Column(
            children: [
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  // Add a clear button to the search bar
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.spaceEvenly,
                  spacing: MediaQuery.of(context).size.width * 0.01,
                  runSpacing: MediaQuery.of(context).size.width * 0.01,
                  
                  children: [
                    InkWell(
                      onTap: () {
                        //
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 132, 20),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 75,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Center(
                              child: Text(
                            'First cont.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ))),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 132, 20),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 75,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Center(
                              child: Text(
                            'Sec cont.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ))),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 132, 20),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 75,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Center(
                              child: Text(
                            'Third cont.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ))),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 132, 20),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 75,
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Center(
                              child: Text(
                            'Fourth cont.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ))),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

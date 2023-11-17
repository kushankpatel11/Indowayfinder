import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_navigation_app/direction_screen.dart';
// import 'package:simple_navigation_app/main.dart';
import 'package:simple_navigation_app/map_screen.dart';
import 'package:simple_navigation_app/search_screen.dart';
import 'package:simple_navigation_app/settings_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simple_navigation_app/locator.dart';
import 'package:simple_navigation_app/camScreen.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  // double screenWidth = MediaQuery.of(context).size.width;
  // double screenHeight = MediaQuery.of(context).size.height;
  File? _imageFile;

  Future<void> _getImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: source);
    // if (image != null) {
    //   setState(() {
    //     _imageFile = File(image.path);
    //   });
    // }
  }

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
                color: Colors.blue.shade300,
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
              title: Text('My Groups'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapScreen()));
              },
            ),
            ListTile(
              title: Text('Create Group'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              },
            ),
            ListTile(
              title: Text('Join Group'),
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
            image: DecorationImage(
              image: AssetImage("images/Background.jpg"),
              fit: BoxFit.cover,
            ),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 165, 213, 227),
                  Color.fromARGB(255, 169, 176, 193),
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
                    icon: Icon(
                      Icons.search,
                    ),
                    onPressed: () {
                      // Perform the search here
                      String searchText = _searchController.text;
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        //  height: 50,
        width: double.infinity,
        color: Colors.blue[300],
        child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.spaceEvenly,
          spacing: MediaQuery.of(context).size.width * 0.1,
          runSpacing: MediaQuery.of(context).size.width * 0.1,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 146, 216),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.5),
                  ),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.12,
                  child: Center(
                    child: Icon(Icons.home),
                  )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CamScreen()));
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 146, 216),
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.5),
                  ),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.12,
                  child: Center(
                    child: Icon(Icons.image_search),
                  )),
            ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //       decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 66, 146, 216),
            //         borderRadius: BorderRadius.circular(
            //             MediaQuery.of(context).size.width * 0.5),
            //       ),
            //       height: 30,
            //       width: MediaQuery.of(context).size.width * 0.12,
            //       child: Center(
            //         child: Icon(Icons.settings),
            //       )),
            // ),
            // InkWell(
            //   onTap: () {},
            //   child: Container(
            //       decoration: BoxDecoration(
            //         color: Color.fromARGB(255, 66, 146, 216),
            //         borderRadius: BorderRadius.circular(
            //             MediaQuery.of(context).size.width * 0.5),
            //       ),
            //       height: 30,
            //       width: MediaQuery.of(context).size.width * 0.12,
            //       child: Center(
            //         child: Icon(Icons.face),
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}

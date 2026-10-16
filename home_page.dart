import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F3FF),
      appBar: AppBar(
        title: Text("HomePage"),
        backgroundColor: const Color.fromARGB(255, 247, 243, 6),
        foregroundColor: const Color.fromARGB(255, 254, 10, 168),
        //leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 65, 13, 176),
              ),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Profile"),
              splashColor: Colors.pink,
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("Contact"),
              splashColor: Colors.pink,
              //hoverColor: Colors.deepOrange,
              onTap: () {},
            ),
            Spacer(),
            ListTile(
              leading: Icon(Icons.person),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(color: Colors.black26, blurRadius: 12, spreadRadius: 2),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Welcome!",
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF4A4168),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Choose an option",
                style: TextStyle(fontSize: 17, color: Color(0xFF8A8499)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8272B8),
                      foregroundColor: Colors.white,
                      shape: const StadiumBorder(),
                      minimumSize: const Size(120, 40),
                    ),
                    child: const Text("Get Started"),
                  ),
                  const SizedBox(width: 12),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: const Color(0xFF4A4168),
                      side: const BorderSide(
                        color: Color(0xFF8272B8),
                        width: 2,
                      ),
                      shape: const StadiumBorder(),
                      minimumSize: const Size(120, 40),
                    ),
                    child: const Text("Learn More"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Text(
      //   "Hello,Welcome to our project",
      //   style: GoogleFonts.lobster(
      //     textStyle: TextStyle(
      //       fontSize: 20,
      //       color: const Color.fromARGB(255, 8, 243, 27),
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        splashColor: Colors.pink,
        child: Icon(Icons.add),
      ),
    );
  }
}

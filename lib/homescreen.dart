import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machines_test_app/components/home_test_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(43, 48, 55, 1)),

            child: Column(
              children: <Widget>[
                SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 16,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Virtual Machines Lab",
                    maxLines: 3,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SearchBar(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    leading: Icon(Icons.search),
                    hintText: "Search for tests",
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Tests",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        HomeTestCard(
                          image: "assets/operational.png",
                          title: "Swinburne's Test",
                          subtitle:
                              "Determine the efficiency of a DC shunt/compound machine without load",
                        ),
                        HomeTestCard(
                          image: "assets/compare.png",
                          title: "Hopkinson’s Test",
                          subtitle:
                              "Find the full-load efficiency of two identical DC machines using minimum power",
                        ),
                        HomeTestCard(
                          image: "assets/torque.png",
                          title: "Brake Test",
                          subtitle:
                              "Measure the torque, power output, and efficiency of a DC motor under direct load",
                        ),
                        HomeTestCard(
                          image: "assets/deceleration.png",
                          title: "Retardation Test",
                          subtitle:
                              "Determine the rotational losses (iron, friction, windage) of a DC machine",
                        ),
                        HomeTestCard(
                          image: "assets/series.png",
                          title: "Field’s Test",
                          subtitle:
                              "Find the efficiency of DC series motors under load conditions",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

//where we run the app
void main()
{
  runApp(const MyApp());
}

//MyApp is the root of the app
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

//MaterialApp provide Material styling, navigation, and themes
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Scaffold = Page Structure
      home: Scaffold
      (

        appBar: AppBar
        (
          backgroundColor: const Color.fromARGB(255, 16, 52, 113),
          //tells flutter,make everthing inside white by default
          foregroundColor: Colors.white,
          leading: const Icon(Icons.menu),
          title: const Text("CampusBuddy"),
          actions:const [
            Icon(Icons.favorite_border,color: Colors.red),
            ],
          ),
        
          body: SingleChildScrollView
          (
          child: Column
          (
            //forces everthing to allign left
            crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Image.network
                (
                'https://tse4.mm.bing.net/th/id/OIP.ZUfp4H6xYFPe3gtyFCUmkQHaQB?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
                width: double.infinity, //stretch as wide as the phone screens
                height: 250, //250px
                fit : BoxFit.cover
                ),

                const SizedBox(height: 16), // invisible space below the image
                const Padding
                (
                  padding: EdgeInsets.only(left: 16, top: 16, right: 16),

                  child: Text
                  (
                    "Now it's more easier",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                ),

                Padding(padding: const EdgeInsets.only(left: 16, top: 8, right: 16),

                  child: Text
                  ('not decided yet',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 14,color: Colors.black),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(16), // Space around the buttons
                  child: Row( // Row puts things side-by-side
                    children: [
                      
                      // First Button
                      Expanded( 
                        child: ElevatedButton(
                          onPressed: () {}, 
                          child: const Text('Student Moodle'),
                        ),
                      ),

                      const SizedBox(width: 10), // The gap between buttons

                      // Second Button
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {}, 
                          child: const Text('Learn More'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
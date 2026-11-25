import 'package:flutter/material.dart';
import 'announcement.dart';

void main() {
  runApp(const MyApp());
}

// The list of announcements (fake data for now, no database yet)
final List<Announcement> announcements = [
  Announcement(
    title: 'Welcome Week',
    description: 'Welcome back students! Activities start on Sunday in the main hall.',
    imageUrl: 'https://picsum.photos/id/1011/600/400',
  ),
  Announcement(
    title: 'Lost Wallet',
    description: 'A black wallet was lost near Building B. Please contact the student affairs office.',
    imageUrl: 'https://picsum.photos/id/1025/600/400',
  ),
  Announcement(
    title: 'Robotics Club Event',
    description: 'The Robotics Club is holding a workshop on Thursday at 2 PM in Lab 3.',
    imageUrl: 'https://picsum.photos/id/1035/600/400',
  ),
  Announcement(
    title: 'Found Keys',
    description: 'A set of keys was found in the library. Pick them up from the front desk.',
    imageUrl: 'https://picsum.photos/id/1043/600/400',
  ),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CampusBuddy',
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

// ---------------- Screen 1: Home ----------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CampusBuddy')),
      body: ListView.builder(
        itemCount: announcements.length,
        itemBuilder: (context, index) {
          final item = announcements[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.campaign),
              title: Text(item.title),
              subtitle: Text(
                item.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              // Tapping the item opens the Details screen
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(announcement: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

// ---------------- Screen 2: Details ----------------
class DetailsScreen extends StatelessWidget {
  final Announcement announcement;

  const DetailsScreen({super.key, required this.announcement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              announcement.imageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              announcement.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(announcement.description),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // go back to Home
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
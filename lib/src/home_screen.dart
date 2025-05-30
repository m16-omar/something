import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/logo-city.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          _buildLiveSection(),
          _buildCarouselSection(),
          _buildShowCard('Breakfast in the City', '5:00 AM - 11:00 AM'),
          _buildDivider('NEWS'),
          _buildNewsCard(
            'Why do brands move promotions with skits and dance?',
            'April 1, 2025',
          ),
          _buildNewsCard(
            '“SACRIFICE MY BIRTHDAY” — Portable explains relationship issues',
            'April 1, 2025',
          ),
          _buildNewsCard(
            'It’s getting tiring” — Jaybola Nuti on Nollywood promo tactics',
            'April 1, 2025',
          ),
          _buildNewsCard(
            'Actor Kunle Remi and wife Tini welcome first child',
            'March 27, 2025',
          ),
          _buildNewsCard(
            'FG declares March 31, April 1 public holidays',
            'March 29, 2025',
          ),
          const SizedBox(height: 30),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildLiveSection() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: const [
          Icon(Icons.play_circle_fill, color: Colors.white, size: 64),
          SizedBox(height: 10),
          Text(
            'LISTEN LIVE ON-AIR',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildCarouselSection() {
    return SizedBox(
      height: 150,
      child: PageView(
        children: [
          _buildShowCard('Lift Off', '10:00 PM - 12:00 AM'),
          _buildShowCard('Breakfast in the City', '5:00 AM - 11:00 AM'),
        ],
      ),
    );
  }

  Widget _buildShowCard(String title, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(time, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }

  Widget _buildDivider(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildNewsCard(String headline, String date) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            date,
            style: const TextStyle(color: Colors.white54, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Column(
      children: const [
        Text(
          'COPYRIGHT CITY 105.1 FM',
          style: TextStyle(color: Colors.white54, fontSize: 12),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class HistoriquePage extends StatelessWidget {
  const HistoriquePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EEDB),
      body: Column(
        children: [
          // Bandeau rouge
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            color: const Color(0xFFB30000),
            child: const Column(
              children: [
                Text(
                  "Historique",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Dernières détections",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Liste d'historique
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [
                _HistoryItem(date: "Aujourd’hui", pas: "Curts"),
                _HistoryItem(date: "Hier", pas: "Llargs"),
                _HistoryItem(date: "Lundi", pas: "Curts"),
                _HistoryItem(date: "Dimanche", pas: "Llargs"),
              ],
            ),
          ),

          // Barre de navigation
          Container(
            height: 70,
            color: const Color(0xFFB30000),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _NavItem(icon: Icons.music_note, label: "Écouter"),
                _NavItem(icon: Icons.history, label: "Historique"),
                _NavItem(icon: Icons.settings, label: "Réglages"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HistoryItem extends StatelessWidget {
  final String date;
  final String pas;

  const _HistoryItem({required this.date, required this.pas});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF4E6),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFB30000), width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            pas,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _NavItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white, size: 28),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

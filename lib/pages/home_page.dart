import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7EEDB), // beige catalan
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
                  "Sardanes Ortaffa",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Écoute en cours…",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 40),

          // Bouton micro
          GestureDetector(
            onTap: () {
              // plus tard : navigation vers la détection
            },
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xFFB30000),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.mic,
                color: Colors.white,
                size: 70,
              ),
            ),
          ),

          const SizedBox(height: 40),

          // Zone d'état
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF4E6),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xFFB30000), width: 2),
            ),
            child: const Column(
              children: [
                Text(
                  "Curts détectés !",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB30000),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Pas courts maintenant !",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),

          const Spacer(),

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

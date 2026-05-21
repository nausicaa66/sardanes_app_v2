import 'package:flutter/material.dart';

class ReglagesPage extends StatelessWidget {
  const ReglagesPage({super.key});

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
                  "Réglages",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Personnalisation de l'application",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Options
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [
                _SettingItem(
                  title: "Activer les notifications",
                  subtitle: "Recevoir une alerte lors d'une détection",
                ),
                _SettingItem(
                  title: "Mode sombre",
                  subtitle: "Thème sombre (non disponible pour l'instant)",
                ),
                _SettingItem(
                  title: "Sensibilité du micro",
                  subtitle: "Ajuster la précision de détection",
                ),
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

class _SettingItem extends StatelessWidget {
  final String title;
  final String subtitle;

  const _SettingItem({required this.title, required this.subtitle});

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 16),
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

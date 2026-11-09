import 'package:flutter/material.dart';

class TournamentList extends StatelessWidget {
  const TournamentList({super.key});

  final List<Map<String, dynamic>> tournaments = const [
    {"title": "Solo Showdown #1", "type": "Solo", "slots": "45/50", "time": "Today 8:00 PM", "prize": "₹500"},
    {"title": "Duo Battle #2", "type": "Duo", "slots": "18/25", "time": "Today 9:30 PM", "prize": "₹1000"},
    {"title": "Squad Clash #3", "type": "Squad", "slots": "40/48", "time": "Tomorrow 7:00 PM", "prize": "₹2000"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A2E),
        title: const Text("Tournaments", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: tournaments.length,
        itemBuilder: (context, i) {
          final t = tournaments[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A2E),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFFFF4655), width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(t["title"], style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF4655),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(t["type"], style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(children: [
                  const Icon(Icons.people, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text("Slots: ${t["slots"]}", style: const TextStyle(color: Colors.grey)),
                  const SizedBox(width: 16),
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(t["time"], style: const TextStyle(color: Colors.grey)),
                ]),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("🏆 Prize: ${t["prize"]}", style: const TextStyle(color: Color(0xFFFFD700), fontWeight: FontWeight.bold)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4655),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      onPressed: () {},
                      child: const Text("Join"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

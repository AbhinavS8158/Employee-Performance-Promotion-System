
  import 'package:flutter/material.dart';

Widget buildScoreBadge(dynamic score) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF1E3A8A), Color(0xFF1E40AF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Text("$score",
              style: const TextStyle(
                  fontSize: 48, fontWeight: FontWeight.w900, color: Colors.white, height: 1)),
          const SizedBox(height: 4),
          const Text("Overall Score",
              style: TextStyle(fontSize: 13, color: Colors.white54, letterSpacing: 0.5)),
        ],
      ),
    );
  }
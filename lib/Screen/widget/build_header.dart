import 'package:flutter/material.dart';

Widget buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 64, 24, 32),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1A2744), Color(0xFF0D1117)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF2563EB).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xFF2563EB).withOpacity(0.4)),
                ),
                child: const Icon(Icons.analytics_rounded, color: Color(0xFF60A5FA), size: 26),
              ),
              const SizedBox(width: 14),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("EvalPro",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          letterSpacing: 0.5)),
                  Text("Employee Evaluation System",
                      style: TextStyle(fontSize: 12, color: Colors.white38, letterSpacing: 0.3)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text("Performance\nAssessment",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  height: 1.15,
                  letterSpacing: -0.5)),
          const SizedBox(height: 10),
          const Text(
            "Fill in employee metrics to generate a\ncomprehensive performance evaluation.",
            style: TextStyle(fontSize: 14, color: Colors.white38, height: 1.6),
          ),
        ],
      ),
    );
  }
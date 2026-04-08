
  import 'package:flutter/material.dart';

Widget buildResultRow(IconData icon, String label, dynamic value, {required Color color}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: color.withOpacity(0.07),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.15)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 18),
          const SizedBox(width: 10),
          Text(label,
              style: TextStyle(
                  fontSize: 13, color: color.withOpacity(0.8), fontWeight: FontWeight.w500)),
          const Spacer(),
          Flexible(
            child: Text("$value",
                textAlign: TextAlign.right,
                style: const TextStyle(
                    fontSize: 13, color: Colors.white, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

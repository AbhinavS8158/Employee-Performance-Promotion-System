
  import 'package:employee_performance_/Screen/widget/build_resultRow.dart';
import 'package:employee_performance_/Screen/widget/build_scoreBadge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/controller.dart';

Widget buildResultCard() {
   final controller = Get.put(EmployeeController());

    return Obx(() {
      if (controller.result.isEmpty) return const SizedBox();

      return TweenAnimationBuilder<double>(
        key: ValueKey(controller.result.hashCode),
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        ),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: const Color(0xFF161B27),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFF2563EB).withOpacity(0.25)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF2563EB).withOpacity(0.08),
                blurRadius: 30,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF22C55E).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.check_circle_rounded,
                        color: Color(0xFF22C55E), size: 20),
                  ),
                  const SizedBox(width: 12),
                  const Text("Evaluation Results",
                      style: TextStyle(
                          fontSize: 17, fontWeight: FontWeight.w700, color: Colors.white)),
                ],
              ),
              const SizedBox(height: 20),
              buildScoreBadge(controller.result['score']),
              const SizedBox(height: 20),
              buildResultRow(Icons.leaderboard_rounded, "Performance",
                  controller.result['performance'],
                  color: const Color(0xFF60A5FA)),
              const SizedBox(height: 12),
              buildResultRow(Icons.verified_rounded, "Eligibility",
                  controller.result['eligibility'],
                  color: const Color(0xFFA78BFA)),
              const SizedBox(height: 12),
              buildResultRow(Icons.lightbulb_rounded, "Recommendation",
                  controller.result['recommendation'],
                  color: const Color(0xFFFBBF24)),
            ],
          ),
        ),
      );
    });
  }

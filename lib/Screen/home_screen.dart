import 'package:employee_performance_/Screen/widget/build_header.dart';
import 'package:employee_performance_/Screen/widget/build_resultCard.dart';
import 'package:employee_performance_/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/build_evaluateButton.dart';
import 'widget/build_field.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(EmployeeController());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: buildHeader()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  buildField("Years of Experience", Icons.workspace_premium_rounded,
                      (v) => controller.experience.value = int.tryParse(v) ?? 0),
                  buildField("Projects Completed", Icons.folder_copy_rounded,
                      (v) => controller.projects.value = int.tryParse(v) ?? 0),
                  buildField("Performance Rating (1–5)", Icons.star_rounded,
                      (v) => controller.rating.value = double.tryParse(v) ?? 0),
                  buildField("Overtime Hours", Icons.schedule_rounded,
                      (v) => controller.overtime.value = int.tryParse(v) ?? 0),
                  buildField("Attendance %", Icons.how_to_reg_rounded,
                      (v) => controller.attendance.value = double.tryParse(v) ?? 0),
                  buildField("Warnings Issued", Icons.warning_amber_rounded,
                      (v) => controller.warnings.value = int.tryParse(v) ?? 0),
                  const SizedBox(height: 28),
                  buildEvaluateButton(),
                  const SizedBox(height: 28),
                  buildResultCard(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

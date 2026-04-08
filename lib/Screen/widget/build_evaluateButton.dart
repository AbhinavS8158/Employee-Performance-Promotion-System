import 'package:employee_performance_/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildEvaluateButton() {
   final controller = Get.put(EmployeeController());
    return Obx(() {
      final isLoading = (controller.isLoading.value as bool?) ?? false;
      return SizedBox(
        width: double.infinity,
        height: 58,
        child: ElevatedButton(
         onPressed: isLoading
    ? null
    : () {
        FocusManager.instance.primaryFocus?.unfocus(); 
        controller.evaluate();
      },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2563EB),
            disabledBackgroundColor: const Color(0xFF2563EB).withOpacity(0.5),
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          child: isLoading
              ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2.5),
                )
              : const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow_rounded, size: 22),
                    SizedBox(width: 8),
                    Text("Run Evaluation",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700, letterSpacing: 0.3)),
                  ],
                ),
        ),
      );
    });
  }
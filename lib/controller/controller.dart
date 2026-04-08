import 'package:get/get.dart';

class EmployeeController extends GetxController
    with GetSingleTickerProviderStateMixin {

  // 📥 Inputs
  var experience = 0.obs;
  var projects = 0.obs;
  var rating = 0.0.obs;
  var overtime = 0.obs;
  var attendance = 0.0.obs;
  var warnings = 0.obs;

  // 📊 Result
  var result = {}.obs;

  // 🔄 Loading (REQUIRED for your UI)
  var isLoading = false.obs;

  // 🚀 Main Evaluation Logic
  void evaluate() async {
    isLoading.value = true;

    await Future.delayed(const Duration(milliseconds: 300)); // smooth UX

    int score = 0;

    // 🚨 Critical Rules
    if (rating.value < 2 || attendance.value < 60) {
      result.value = {
        "score": 0,
        "performance": "Poor",
        "eligibility": "Not Eligible",
        "recommendation": "Do Not Promote"
      };
      isLoading.value = false;
      return;
    }

    // Experience
    if (experience.value < 2) score += 1;
    else if (experience.value <= 5) score += 3;
    else score += 5;

    // Projects
    if (projects.value < 5) score += 1;
    else if (projects.value <= 10) score += 3;
    else score += 5;

    // Rating
    if (rating.value < 3) score += 1;
    else if (rating.value <= 4) score += 3;
    else score += 5;

    // Attendance
    if (attendance.value < 75) score += 0;
    else if (attendance.value <= 90) score += 2;
    else score += 4;

    // Warnings
    score -= (warnings.value * 2);

    // ⚖️ Adjustments
    if (overtime.value > 50) score += 2;
    if (rating.value >= 4 && attendance.value < 75) score -= 2;
    if (warnings.value == 0) score += 2;

    // 📊 Performance
    String performance;
    if (score <= 5) performance = "Poor";
    else if (score <= 12) performance = "Average";
    else performance = "Excellent";

    // 🎯 Eligibility
    String eligibility;
    if (performance == "Excellent") eligibility = "Eligible";
    else if (performance == "Average") eligibility = "Consider";
    else eligibility = "Not Eligible";

    // 🧾 Recommendation
    String recommendation;
    if (eligibility == "Eligible") {
      recommendation = "Promote Immediately";
    } else if (eligibility == "Consider") {
      recommendation = "Needs Improvement";
    } else {
      recommendation = "Do Not Promote";
    }

    // ✅ Final Result
    result.value = {
      "score": score,
      "performance": performance,
      "eligibility": eligibility,
      "recommendation": recommendation
    };

    isLoading.value = false;
  }
}
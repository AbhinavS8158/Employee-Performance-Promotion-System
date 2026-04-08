# employee_performance_

# 🚀 Employee Performance & Promotion System

A Flutter-based application that evaluates employee performance and determines promotion eligibility using a rule-based scoring system.

---

## 📱 Overview

The **Employee Performance & Promotion System** is designed to help HR teams and organizations assess employee productivity and performance efficiently.

The app collects key performance metrics and applies predefined business rules to generate:

* 📊 Performance Level
* 🎯 Promotion Eligibility
* 🧾 HR Recommendation

---

## 🛠️ Tech Stack

* **Flutter** – UI Development
* **Dart** – Programming Language
* **GetX** – State Management

---

## ✨ Features

* 📥 Input employee performance data
* ⚡ Real-time evaluation using business rules
* 🎬 Smooth UI animations
* 📊 Dynamic result display
* 🚫 Critical rule override handling
* 📱 Clean and responsive UI

---

## 📥 Input Fields

* Experience (Years)
* Projects Completed
* Average Rating (1–5)
* Overtime Hours
* Attendance (%)
* Warnings (Count)

---

## ⚙️ Evaluation Logic

### Base Scoring

| Category   | Condition    | Score |
| ---------- | ------------ | ----- |
| Experience | < 2          | +1    |
|            | 2–5          | +3    |
|            | > 5          | +5    |
| Projects   | < 5          | +1    |
|            | 5–10         | +3    |
|            | > 10         | +5    |
| Rating     | < 3          | +1    |
|            | 3–4          | +3    |
|            | > 4          | +5    |
| Attendance | < 75%        | +0    |
|            | 75–90%       | +2    |
|            | > 90%        | +4    |
| Warnings   | Each warning | -2    |

---

### 🚨 Critical Rules

* Rating < 2 → ❌ Not Eligible
* Attendance < 60% → ❌ Not Eligible

---

### ⚖️ Adjustments

* Overtime > 50 hrs → +2
* High Rating + Low Attendance → -2
* No Warnings → +2

---

## 📊 Performance Classification

| Score Range | Level     |
| ----------- | --------- |
| 0 – 5       | Poor      |
| 6 – 12      | Average   |
| 13+         | Excellent |

---

## 🎯 Promotion Decision

| Performance | Eligibility  |
| ----------- | ------------ |
| Excellent   | Eligible     |
| Average     | Consider     |
| Poor        | Not Eligible |

---

## 🧾 HR Recommendation

* ✅ Eligible → **Promote Immediately**
* ⚠️ Consider → **Needs Improvement**
* ❌ Not Eligible → **Do Not Promote**

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/employee-performance-app.git
```

### 2. Navigate to project

```bash
cd employee-performance-app
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the app

```bash
flutter run
```

---

## 📂 Project Structure

```
lib/
├── controller/
│   └── employee_controller.dart
├── view/
│   └── home_screen.dart
├── main.dart
```

---

## 🧠 Key Concepts Used

* Reactive Programming with GetX (`.obs`)
* Separation of Concerns (UI vs Logic)
* Rule-Based Decision System
* Animation & UI Enhancements

---

## 🎯 Future Improvements

* ✅ Add data persistence (Hive / SharedPreferences)
* 📊 Add charts & analytics dashboard
* 🌐 API integration for real employee data
* 🔐 Authentication system
* 📈 Performance history tracking

---

## 👨‍💻 Author

**Abhinav S**

* Flutter Developer
* MCA Graduate
* Passionate about building scalable mobile applications

---

## ⭐ Contribution

Feel free to fork this project and improve it. Contributions are welcome!

---

## 📄 License

This project is open-source and available under the MIT License.

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

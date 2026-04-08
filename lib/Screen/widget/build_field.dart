 import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget buildField(String label, IconData icon, Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: _FocusableField(label: label, icon: icon, onChanged: onChanged),
    );
  }
  
class _FocusableField extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function(String) onChanged;

  _FocusableField({
    required this.label,
    required this.icon,
    required this.onChanged,
  });

  final RxBool _focused = false.obs;
  final FocusNode _focusNode = FocusNode();

  void _setupListener() {
    _focusNode.addListener(() => _focused.value = _focusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    _setupListener();

    return Obx(() {
      const activeColor = Color(0xFF2563EB);
      final focused = _focused.value;

      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: const Color(0xFF161B27),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: focused ? activeColor.withOpacity(0.7) : const Color(0xFF2A3048),
            width: focused ? 1.5 : 1,
          ),
          boxShadow: focused
              ? [BoxShadow(color: activeColor.withOpacity(0.15), blurRadius: 12)]
              : [],
        ),
        child: TextField(
          focusNode: _focusNode,
          style: const TextStyle(color: Colors.white, fontSize: 15),
          keyboardType: TextInputType.number,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: focused ? activeColor : Colors.white38,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            prefixIcon: Icon(icon, color: focused ? activeColor : Colors.white24, size: 20),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          ),
        ),
      );
    });
  }
}

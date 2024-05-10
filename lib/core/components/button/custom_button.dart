import 'package:flutter/material.dart';

Container butonContainer(String yazi, Color renk) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(color: renk, borderRadius: BorderRadius.circular(10)),
    child: Text(yazi, style: const TextStyle(color: Colors.white, fontSize: 14),),
  );
}
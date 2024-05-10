import 'package:flutter/material.dart';

DropdownMenuItem<int> menuItemInt(String item, int idx) => DropdownMenuItem(
  value: idx,
  child: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Text(item, style: const TextStyle(fontSize: 14)),
  ),
);

DropdownMenuItem<String> menuItemStr(String item) => DropdownMenuItem(
  value: item,
  child: Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Text(item, style: const TextStyle(fontSize: 14)),
  ),
);
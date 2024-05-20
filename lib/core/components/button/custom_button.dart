import 'package:flutter/material.dart';

customNormalButon(Function function, String text, Color color){
  return ElevatedButton(
    onPressed: (){ function(); },
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Text(text, style: const TextStyle(color: Colors.white)),
  );
}

customWithIconButon(Function function, IconData icon, String text){
  return ElevatedButton.icon(
    onPressed: (){ function(); },
    icon: Icon(icon),
    label: Text(text),
  );
}

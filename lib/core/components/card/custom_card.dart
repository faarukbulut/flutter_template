import 'package:flutter/material.dart';

normalCard(String title, String subtitle){
  return Card(
    elevation: 2,
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
    ),
  );
}
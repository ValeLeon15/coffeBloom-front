import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';
import 'home_page.dart'; // tu página inicial

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // PRESERVA la pantalla splash mientras inicializa
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // Simula alguna inicialización (ejemplo: cargar configs, db, auth)
  await initialization();

  // Quita el splash (ahora sí muestra la app)
  FlutterNativeSplash.remove();

  runApp(const MyApp());
}

Future<void> initialization() async {
  // Aquí pones la lógica que quieras antes de quitar el splash
  await Future.delayed(Duration(seconds: 2)); // ejemplo: delay de 2 segundos
}



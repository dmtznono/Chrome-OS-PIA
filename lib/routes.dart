import 'package:flutter/material.dart';

import 'screens/af1/af1_main_screen.dart';
import 'screens/af2/af2_main_screen.dart';
import 'screens/af3/af3_main_screen.dart';
import 'screens/af4/af4_main_screen.dart';
import 'screens/core/pantalla_equipo.dart';
import 'screens/core/pantalla_inicio.dart';
import 'screens/core/pantalla_menu.dart';
import 'screens/core/pantalla_referencias.dart';

/// Nombres de ruta y tabla de rutas de toda la app.
/// Responsable: Integrante 1 (Arquitecto).
///
/// Para navegar:  Navigator.pushNamed(context, AppRoutes.af1);
/// Para ir a inicio: Navigator.pushNamedAndRemoveUntil(
///     context, AppRoutes.inicio, (route) => false);
///
/// Los Int. 2 y 3 NO deben modificar este archivo: solo construyen el
/// contenido de AF1MainScreen / AF2MainScreen (PantallaAF1 / PantallaAF2).
class AppRoutes {
  AppRoutes._();

  static const String inicio = '/';
  static const String menu = '/menu';
  static const String af1 = '/af1';
  static const String af2 = '/af2';
  static const String af3 = '/af3';
  static const String af4 = '/af4';
  static const String equipo = '/equipo';
  static const String referencias = '/referencias';

  static final Map<String, WidgetBuilder> map = {
    inicio: (_) => const PantallaInicio(),
    menu: (_) => const PantallaMenu(),
    af1: (_) => const PantallaAF1(),
    af2: (_) => const PantallaAF2(),
    af3: (_) => const PantallaAF3(),
    af4: (_) => const PantallaAF4(),
    equipo: (_) => const PantallaEquipo(),
    referencias: (_) => const PantallaReferencias(),
  };

  /// Regresa a la pantalla de inicio limpiando el historial.
  static void irAInicio(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, inicio, (route) => false);
  }
}

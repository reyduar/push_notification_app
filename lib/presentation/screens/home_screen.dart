import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _HomeView(),
      appBar: AppBar(title: const Text('Push Notification App'), actions: [
        IconButton(
            onPressed: () {
              // Solicitar permisos de notificaciones
            },
            icon: const Icon(Icons.settings))
      ]),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ListTile(
        title: Text('Notificación $index'),
        subtitle: Text('Descripción de la notificación $index'),
        trailing: IconButton(
          onPressed: () {
            // Eliminar notificación
          },
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}

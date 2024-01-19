import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_notification_app/presentation/blocs/notifications/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _HomeView(),
      appBar: AppBar(
          title: context
              .select((NotificationsBloc bloc) => Text('${bloc.state.status}')),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<NotificationsBloc>().requestPermission();
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

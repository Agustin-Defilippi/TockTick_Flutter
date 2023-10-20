import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tock_tick_app/configuraciones/TemaApp/tema_app.dart';
import 'package:tock_tick_app/presentacion/Providers/colors_provider.dart';
import 'package:tock_tick_app/presentacion/Providers/discover_provider.dart';
import 'package:tock_tick_app/presentacion/pantallas/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DiscoverProvider()..loadingNextPage(),),
        ChangeNotifierProvider(create: (_) => ProviderButton(),)
      ],
      child: MaterialApp(
        title: 'Tock Tick App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themaApp(),
        home:const  DiscoverScreen(),
      ),
    );
  }
}                                                                                                                                        
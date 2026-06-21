import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'firebase_options.dart';

void main() async {
  // 1. Garante que os motores do Flutter estão prontos antes de chamar código nativo (Firebase)
  WidgetsFlutterBinding.ensureInitialized();

  // 2. Acorda o Firebase usando as configurações automáticas
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // 3. Configura o Crashlytics para pegar erros de UI do Flutter (Widgets)
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  // 4. Configura o Crashlytics para pegar erros invisíveis (Assíncronos, Isolate, APIs)
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // Aqui você também chamaria a inicialização da injeção de dependência (get_it)
  // await initConfig();
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(
    analytics: analytics,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex Sênior',
      // Passando o observer para o Analytics saber quando o usuário troca de tela
      navigatorObservers: <NavigatorObserver>[observer],
      home: const Scaffold(
        body: Center(child: Text("Pokedex Iniciada com Firebase!")),
      ),
    );
  }
}

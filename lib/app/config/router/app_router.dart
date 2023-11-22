import 'package:go_router/go_router.dart';
import '../../presentation/views/botones_view/Botones_View.dart';
import '../../presentation/views/home_view/home_view.dart';
import '../../presentation/views/iconos_view/Iconos_View.dart';
import '../../presentation/views/login_view/login_view.dart';


final appRouter = GoRouter(
  initialLocation: '/Login_view',
  routes: [
    GoRoute(
      path: '/',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/Login_view',
      name: LoginView.name,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: '/Botones_view',
      name: BotonesView.name,
      builder: (context, state) => const BotonesView(),
    ),
    GoRoute(
      path: '/Iconos_view',
      name: IconosView.name,
      builder: (context, state) => const IconosView(),
    )
  ],
);

import 'package:go_router/go_router.dart';
import 'package:weather/pages/home_page.dart';

List<RouteBase> _routes = [
  GoRoute(path: '/', builder: (context, state) => const HomePage()),
];

var routerConfig = GoRouter(routes: _routes);

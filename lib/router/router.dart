import 'package:audiofy/router/router.gr.dart';
import 'package:auto_route/auto_route.dart';

final router = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AuthWrapperRoute.page,
          path: '/',
          children: [
            RedirectRoute(path: '', redirectTo: 'login'),
            AutoRoute(
              page: LoginRoute.page,
              path: 'login',
            ),
            AutoRoute(page: RegisterRoute.page, path: 'register'),
          ],
        ),
        AutoRoute(
          page: AppWrapperRoute.page,
          path: '/app',
          children: [
            AutoRoute(page: HomeRoute.page, path: 'home'),
            AutoRoute(page: DetailsRoute.page, path: 'details'),
          ],
        ),
        AutoRoute(page: LoadingRoute.page, path: '/loading'),
      ];
}

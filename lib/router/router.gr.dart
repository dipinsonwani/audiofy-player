// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:audiofy/features/auth/presentation/screens/auth_wrapper_page.dart'
    as _i2;
import 'package:audiofy/features/auth/presentation/screens/loading_page.dart'
    as _i5;
import 'package:audiofy/features/auth/presentation/screens/login_page.dart'
    as _i6;
import 'package:audiofy/features/auth/presentation/screens/register_page.dart'
    as _i7;
import 'package:audiofy/features/home/domain/entities/song_entity.dart' as _i10;
import 'package:audiofy/features/home/presentation/screens/app_wrapper_page.dart'
    as _i1;
import 'package:audiofy/features/home/presentation/screens/details_page.dart'
    as _i3;
import 'package:audiofy/features/home/presentation/screens/home_page.dart'
    as _i4;
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AppWrapperRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppWrapperPage(),
      );
    },
    AuthWrapperRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthWrapperPage(),
      );
    },
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.DetailsPage(
          key: args.key,
          song: args.song,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoadingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoadingPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppWrapperPage]
class AppWrapperRoute extends _i8.PageRouteInfo<void> {
  const AppWrapperRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AppWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppWrapperRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthWrapperPage]
class AuthWrapperRoute extends _i8.PageRouteInfo<void> {
  const AuthWrapperRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AuthWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthWrapperRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DetailsPage]
class DetailsRoute extends _i8.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    _i9.Key? key,
    required _i10.SongEntity song,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          DetailsRoute.name,
          args: DetailsRouteArgs(
            key: key,
            song: song,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsRoute';

  static const _i8.PageInfo<DetailsRouteArgs> page =
      _i8.PageInfo<DetailsRouteArgs>(name);
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    this.key,
    required this.song,
  });

  final _i9.Key? key;

  final _i10.SongEntity song;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, song: $song}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoadingPage]
class LoadingRoute extends _i8.PageRouteInfo<void> {
  const LoadingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterPage]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

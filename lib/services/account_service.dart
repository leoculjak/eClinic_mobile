import 'package:flutter_appauth/flutter_appauth.dart';

class IdentityConfiguration {
  static String issuer = 'https://d6c5-93-180-97-125.ngrok-free.app';
  static String redirectUrl = 'com.eclinic.eclinic.mobile://callback';
  static String discoveryUrl = '$issuer/.well-known/openid-configuration';
  static String clientId = 'com.eclinic.eclinic.mobile';
  static List<String> scopes = <String>['openid', 'profile'];
}

class AccountProvider {
  FlutterAppAuth appAuth = const FlutterAppAuth();
  // String? _authorizationCode;

  final AuthorizationServiceConfiguration _serviceConfiguration =
      AuthorizationServiceConfiguration(
    authorizationEndpoint: '${IdentityConfiguration.issuer}/connect/authorize',
    tokenEndpoint: '${IdentityConfiguration.issuer}/connect/token',
    endSessionEndpoint: '${IdentityConfiguration.issuer}/connect/endsession',
  );

  AccountProvider() {}

  Future<void> tryToLogin() async {
    try {
      final AuthorizationTokenResponse? result =
          await appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          IdentityConfiguration.clientId,
          IdentityConfiguration.redirectUrl,
          serviceConfiguration: _serviceConfiguration,
          scopes: IdentityConfiguration.scopes,
          preferEphemeralSession: true,
        ),
      );

      print('RESULT: ${result?.accessToken}');
    } catch (e) {
      print('Error requesting token: $e');
    }
  }
}

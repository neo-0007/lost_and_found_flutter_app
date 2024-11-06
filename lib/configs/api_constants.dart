class ApiConstants {
  static const String baseUrl =
      'https://lost-and-found-backend-three.vercel.app'; //Api url
  static const String signupUrl =
      '$baseUrl/api/auth/register'; //signup endpoint
  static const String signinUrl = '$baseUrl/api/auth/login';
  static const String test = '$baseUrl/api/auth/test'; //signin endpoint
  static const String tokenHeader = 'Authorization';
}

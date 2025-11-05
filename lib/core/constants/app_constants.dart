class AppConstants {
  // API Configuration
  static const String apiBaseUrl = 'https://your-api-url.com/api';
  static const int apiTimeout = 30000; // 30 seconds
  static const int chunkSize = 1024 * 1024; // 1MB chunks for file upload

  // Storage Keys
  static const String authTokenKey = 'auth_token';
  static const String userDataKey = 'user_data';
  static const String draftDataKey = 'draft_data';

  // Validation
  static const int maxFileSize = 10 * 1024 * 1024; // 10MB
  static const List<String> allowedFileTypes = [
    'pdf',
    'jpg',
    'jpeg',
    'png',
  ];

  // Regex Patterns
  static const String emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  static const String phonePattern = r'^\d{10}$';
  static const String postalCodePattern = r'^\d{5}$';

  // Wizard Steps
  static const int totalRegistroSteps = 6;
  static const int totalAmicusSteps = 3;

  // Routes Names
  static const String homeRoute = '/';
  static const String loginRoute = '/login';
  static const String registroUsuarioRoute = '/registro-usuario';
  static const String inicioRoute = '/inicio';
  static const String consultaRoute = '/consulta';
}

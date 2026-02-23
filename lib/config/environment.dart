/// Environment configuration using dart-define
///
/// To build with environment variables:
///
/// flutter build apk \
///   --dart-define=SUPABASE_URL=your_url \
///   --dart-define=SUPABASE_ANON_KEY=your_key
///
/// Or for development:
///
/// flutter run \
///   --dart-define=SUPABASE_URL=your_url \
///   --dart-define=SUPABASE_ANON_KEY=your_key

class Environment {
  // Supabase credentials - injected at build time via --dart-define
  static const String supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: '', // Empty if not provided
  );

  static const String supabaseAnonKey = String.fromEnvironment(
    'SUPABASE_ANON_KEY',
    defaultValue: '', // Empty if not provided
  );

  /// Check if Supabase is configured
  static bool get isSupabaseConfigured {
    return supabaseUrl.isNotEmpty && supabaseAnonKey.isNotEmpty;
  }

  /// Get app version
  static const String appVersion = String.fromEnvironment(
    'APP_VERSION',
    defaultValue: '1.0.0',
  );

  /// Get app name
  static const String appName = 'AIVO';
}

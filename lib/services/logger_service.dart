import 'dart:io';
import 'package:path_provider/path_provider.dart';

class LoggerService {
  static final LoggerService _instance = LoggerService._internal();
  late File _logFile;
  late StringBuffer _logBuffer;
  late String _logPath;

  LoggerService._internal();

  factory LoggerService() {
    return _instance;
  }

  Future<void> init() async {
    _logBuffer = StringBuffer();

    try {
      final appDocDir = await getApplicationDocumentsDirectory();
      final logsDir = Directory('${appDocDir.path}/logs');

      if (!await logsDir.exists()) {
        await logsDir.create(recursive: true);
      }

      final timestamp = DateTime.now().toString().replaceAll(':', '-').split('.')[0];
      _logPath = '${logsDir.path}/aivo_$timestamp.log';
      _logFile = File(_logPath);

      // Write initial message
      _write('[INIT] Logger service initialized at $_logPath');
    } catch (e) {
      print('ERROR: Failed to initialize logger: $e');
      _logPath = '/data/unknown';
    }
  }

  void _write(String message) {
    final timestamp = DateTime.now().toString();
    final logLine = '[$timestamp] $message\n';

    _logBuffer.write(logLine);

    try {
      _logFile.writeAsStringSync(_logBuffer.toString());
    } catch (e) {
      print('ERROR writing log: $e');
    }
  }

  void i(String message) => _write('[INFO] $message');
  void d(String message) => _write('[DEBUG] $message');
  void e(String message, [dynamic error, StackTrace? stackTrace]) {
    final errorStr = error != null ? '\n$error' : '';
    _write('[ERROR] $message$errorStr');
  }
  void w(String message) => _write('[WARN] $message');

  Future<String> getLogPath() async {
    return _logPath;
  }

  Future<String> getLogContent() async {
    try {
      return await _logFile.readAsString();
    } catch (e) {
      return 'Error reading log file: $e';
    }
  }
}

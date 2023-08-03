// In Memory auth token for the current session.
// Token should be retrieved from secure storage and added here
// to be used for authentication on every API call
class InMemoryToken {
  InMemoryToken._internal();
  static final instance = InMemoryToken._internal();

  String? _token;

  void setToken(String token) {
    _token = token;
  }

  void clear() {
    _token = null;
  }

  String? get token => _token;

  Map<String, String> get authHeader => {'Authorization': asAuthToken};

  String get asAuthToken => 'Bearer $_token';
}

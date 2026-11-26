// Fake "database" of accounts: email -> password
// (Temporary. It resets when the app restarts. Firebase will replace it later.)
final Map<String, String> users = {
  'admin@campus.com': '123456',
  'student@campus.com': '123456',
};
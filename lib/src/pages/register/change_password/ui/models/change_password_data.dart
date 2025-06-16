class ChangePasswordData {
  final String code;
  final String password;
  final String confirmPassword;

  ChangePasswordData({
    required this.code,
    required this.password,
    required this.confirmPassword,
  });
}

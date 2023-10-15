class AppRegex {
  AppRegex._();

  static const Pattern phoneNumberVnRegex = r'(^(?:[+0]9)?[0-9]{10,11}$)';

  static const Pattern passwordRegex = r'^(?=.*[a-zA-Z])(?=.*[0-9])[A-Za-z0-9$@$!%*?&#]{8,}$';

  static const Pattern simpleUrlRegex = r'(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\(\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))';
}

import 'functions.dart';

extension StringExtensionOnNonull on String {
  String? get capitalized {
    return (isNotEmpty) ? '${this[0].toUpperCase()}${substring(1)}' : this;
  }
}

extension StringExtensionOnNullable on String? {
  String? textFormat(List<dynamic> args) => StringUtils.textFormat(this, args);

  String? decorator(Map<String, dynamic> params) =>
      StringUtils.decorator(this, params);

  bool get isBlank {
    if (this == null) return true;
    return this!.trim().isEmpty;
  }

  bool get isNotBlank {
    return !isBlank;
  }

  bool get isNullOrEmpty {
    return StringUtils.isNullOrEmpty(this);
  }

  bool get isNotNullOrEmpty {
    return !isNullOrEmpty;
  }

  bool get isNullOrEmptyOrBlank => StringUtils.isNullOrEmptyOrBlank(this);

  bool get isEqualsIgnoreCase => StringUtils.equalsIgnoreCase(this, this);
}

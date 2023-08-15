mixin ValidatorMixin {
  String? isFieldValid(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'من فضلك ادخل $fieldName';
    }
    return null;
  }

  String? isPasswordValid(String? value) {
    if (value == null || value.isEmpty) {
      return 'من فضلك ادخل كلمة المرور';
    } else  if (value.length < 8) {
      return ' كلمة المرو يجب الا تقل عن 8 احرف';
    }
    return null;
  }

  String? isPasswordConfirmValid(String? password, String? confirmPassword) {
    if (password == null) {
      return 'من فضلك ادخل كلمة مرور جديدة';
    } else if (confirmPassword == null) {
      return 'من فضلك ادخل اعد كتابة كلمة المرور';
    } else if (password != confirmPassword) {
      return 'كلمة المرور غير متطابقة';
    }
    return null;
  }

  String? isPinCodeValid(String? value) {
    if (value == null || value.isEmpty) {
      return 'من فضلك ادخل الكود';
    } else if (value.length < 6) {
      return 'يجب ان يكون الكود 6 ارقام';
    }
    return null;
  }

  String? isANumericValue(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'من فضلك ادخل $fieldName';
    } else if (int.tryParse(value) == null) {
      return 'مسموح بالارقام الصحيحة فقط';
    }
    return null;
  }
}

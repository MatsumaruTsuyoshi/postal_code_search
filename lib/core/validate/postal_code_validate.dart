class PostalCodeValidator implements Validatable {
  static String? Function(String?)? validate = (value) {
    if (value == null) {
      return null;
    }
    // if (value.isEmpty) {
    //   return '値が未設定です。';
    // }

    // 整数
    if (int.tryParse(value) == null && value.isNotEmpty) {
      return '整数を入力してください';
    }

    if (value.indexOf(' ') >= 0 && value.trim() == '') {
      return '空文字は受け付けていません。';
    }

    if (value.indexOf('　') >= 0 && value.trim() == '') {
      return '空文字は受け付けていません。';
    }

    if (value.length > 7) {
      return '郵便番号は７桁です';
    }
    return null;
  };
}

abstract class Validatable {
  static String? Function(String?)? validate = (value) {};
}

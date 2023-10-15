class FontSizeService {
  static final FontSizeService _singleton = FontSizeService._internal();

  factory FontSizeService() {
    return _singleton;
  }

  FontSizeService._internal();

  // init
  void init({
    double? baseFontSize,
  }) {
    this.baseFontSize = baseFontSize ?? 16;
  }

  double baseFontSize = 16;

  double get text_XS5 => baseFontSize - 6;

  double get text_XS4 => baseFontSize - 5;

  double get text_XS3 => baseFontSize - 4;

  double get text_XS2 => baseFontSize - 3;

  double get text_XS => baseFontSize - 2;

  double get text_S => baseFontSize - 1;

  double get text => baseFontSize;

  double get text_L => baseFontSize + 1;

  double get text_XL => baseFontSize + 2;

  double get text_XL2 => baseFontSize + 3;

  double get text_XL3 => baseFontSize + 4;

  double get text_XL4 => baseFontSize + 5;

  double get text_XL5 => baseFontSize + 6;

  double get text_XL6 => baseFontSize + 7;
}

import 'dart:math';

/// Class that holds all color generation logic.
class ColorGenerator {

  static Random _rng = new Random();

  /// Generates two 'inverse' colors one for background and
  /// the other for text within it.
  /// 
  /// @returns [Map] with code values for both colors.
  static Map<String, int> generateInverseColorCodes() {
    // Generating the values for each byte of color code
    // (except alpha, which is always set to #FF making it
    // fully opaque).
    int alpha = 255 * 0x1000000; // 256^3;
    int redBg = _rng.nextInt(255) * 0x10000; // 256^2
    int greenBg = _rng.nextInt(255) * 0x100; // 256^1
    int blueBg = _rng.nextInt(255);

    int bgColor = alpha + redBg + greenBg + blueBg;
    // setting the inverted value to text color 
    // (keeping the opacity at max, hence AND 0xFF000000)
    int textColor = (~bgColor) | 0xFF000000; 

    // return { "bgColor":alpha+redBg+greenBg+blueBg, "textColor":alpha+redText+greenText+blueText };
    return { "bgColor":bgColor, "textColor":textColor };
  }
}
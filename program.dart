class NumberToWords {
  static const ones = [
    'zero',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine'
  ];
  static const teens = [
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'fifteen',
    'sixteen',
    'seventeen',
    'eighteen',
    'nineteen'
  ];
  static const tens = [
    '',
    '',
    'twenty',
    'thirty',
    'forty',
    'fifty',
    'sixty',
    'seventy',
    'eighty',
    'ninety'
  ];
  static const thousands = ['', 'thousand', 'million', 'billion'];

  static String convert(int num) {
    if (num < 10) return ones[num];
    if (num < 20) return teens[num - 10];
    if (num < 100) return '${tens[num ~/ 10]} ${ones[num % 10]}'.trim();
    if (num < 1000)
      return '${ones[num ~/ 100]} hundred ${convert(num % 100)}'.trim();
    if (num < 1000000)
      return '${convert(num ~/ 1000)} thousand ${convert(num % 1000)}'.trim();
    if (num < 1000000000)
      return '${convert(num ~/ 1000000)} million ${convert(num % 1000000)}'
          .trim();
    return '${convert(num ~/ 1000000000)} billion ${convert(num % 1000000000)}'
        .trim();
  }
}

void main() {
  print(NumberToWords.convert(123));
  print(NumberToWords.convert(4567));
  print(NumberToWords.convert(89012));
  print(NumberToWords.convert(123456));
  print(NumberToWords.convert(1234567));
  print(NumberToWords.convert(123456789));
}

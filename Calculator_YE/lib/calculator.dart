import 'dart:io';

main(List<String> args) {
  var result;

  double sum(double a, double b) {
    return a + b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double minus(double a, double b) {
    return a - b;
  }

  double divide(double a, double b) {
    return a / b;
  }

  void _chooseOperation(int input) {
    print(
        "Yapmak istediğiniz işlemi seçiniz: \n1-Toplama \n 2-Çıkarma \n 3-Çarpma \n  4-Bölme \n ******ÇIKIŞ İÇİN -1'E BASINIZ****** ");
    print("a sayısını giriniz: ");
    double x = double.parse(stdin.readLineSync());
    print("b sayısını giriniz: ");
    double y = double.parse(stdin.readLineSync());
    switch (input) {
      case 1:
        result = sum(x, y);
        print("**********\nSonuç = ${result}\n******");
        break;
      case 2:
        result = minus(x, y);
           print("**********\nSonuç = ${result}\n******");
        break;
      case 3:
        result = multiply(x, y);
          print("**********\nSonuç = ${result}\n******");
        break;
      case 4:
        result = divide(x, y);
         print("**********\nSonuç = ${result}\n******");
        break;
         case -1:
        result = divide(x, y);
         print("**********\nSonuç = ${result}\n******");
        break;
        
      default: print("Yanlıs islem gerçekleştirdiniz");
    }
  }

  while (true) {
    int input = int.parse(stdin.readLineSync());
    if (input == -1) {
      print("Program kapanıyor...");
      break;
    } else {
      _chooseOperation(input);
    }
  }
}

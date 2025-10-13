import 'package:flutter_test/flutter_test.dart';


bool isPerfect(int num) {
 if (num < 1) return false;
 int sum = 0;
 for (int i = 1; i <= num ~/ 2; i++) {
   if (num % i == 0) {
     sum += i;
   }
 }
 return sum == num;

}

int factorial(int n) {
 if (n < 0) throw ArgumentError('Número deve ser não negativo.');
 int result = 1;
 int i = n;
 while (i > 1) {
   result *= i;
   i--;
 }
 return result;
}

bool ehPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }

  if (numero == 2) {
    return true;
  }

  if (numero % 2 == 0) {
    return false;
  }

  for (int i = 3; i * i <= numero; i += 2) {
    if (numero % i == 0) {
      return false;
    }
  }

  return true;
}
int sumOfDigits(int number) {
  if (number < 0) {
    throw ArgumentError('O número deve ser não-negativo para somar os dígitos.');
  }
  
  int sum = 0;
  String numberString = number.toString();
  
  for (int i = 0; i < numberString.length; i++) {
    sum += int.parse(numberString[i]);
  }
  
  return sum;
}

void main() {
 group('Testes de Número perfeito', () {
   test('Número perfeito 6', () {
     expect(isPerfect(6), isTrue);
   });

   test('Número negativo não deve ser perfeito', () {
     expect(isPerfect(-6), isFalse);
   });
 });

group('Testes de Fatorial', () {
   test('Fatorial de 5', () {
     expect(factorial(5), equals(120));
   });

   test('Fatorial de número negativo deve lançar erro', () {
     expect(() => factorial(-3), throwsArgumentError);
   });
 });
}





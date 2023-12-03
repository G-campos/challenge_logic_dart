import 'dart:io';

void calculate() {
  final rl = stdin.readLineSync;

  final groupByThree = <int>[];
  var sumGroupByThree = 0;

  final groupByFive = <int>[];
  var sumGroupByFive = 0;

  var total = 0;

  bool divisibleByThree(int input) {
    return input % 3 == 0;
  }

  bool divisibleByFive(int input) {
    return input % 5 == 0;
  }

  stdout.write('Informe um numero inteiro: ');
  final input = int.parse(rl()!);

  print('\n');

  for (var i = 0; i < input; i++) {
    if (divisibleByThree(i)) {
      groupByThree.add(i);
      sumGroupByThree += i;
    }

    if (divisibleByFive(i)) {
      groupByFive.add(i);
      sumGroupByFive += i;
    }
  }

  total = sumGroupByFive + sumGroupByThree;

  print('Número divisiveis por 3: $groupByThree');
  print('A soma dos numeros divisiveis por 3 é $sumGroupByThree \n');

  print('Número divisiveis por 5: $groupByFive');
  print('A soma dos numeros divisiveis por 5 é $sumGroupByFive \n');

  print('A soma Total é $total \n');
}

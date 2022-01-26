void main(args) {
  final number = int.tryParse(args[0]) ?? -1;
  
  if (number <= 0) {
    print("Informe um número válido e positivo.");
    return;
  }

  print(lessThanDivisible(number));
}

int lessThanDivisible(int number) {
  return [for (var i = 0; i < number; i++) i]
      .where((element) => element % 3 == 0 || element % 5 == 0)
      .reduce((value, element) => value + element);
}

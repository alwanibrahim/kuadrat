List<int> squareList(List<int> numbers) {
  return numbers.map((num) => num * num).toList();
}

void main() {
  List<int> originalList = [1, 2, 3, 4, 5];
  List<int> squaredList = squareList(originalList);

  print("List Asli: $originalList");
  print("List Kuadrat: $squaredList");
}

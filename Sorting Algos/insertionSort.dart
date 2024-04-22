void main() {
  var list = [45, 67, 0, 34, 99, 4];
  print('Original Array:');
  print(list);
  print('___________');
  print('Insertion Sort Implemented:');
  insertSort(list);
  print(list);
}

void insertSort(List<int> a) {
  for (var i = 1; i < a.length; i++) {
    int j, t = a[i];
    for (j = i - 1; j >= 0 && t < a[j]; j--) {
      a[j + 1] = a[j];
    }
    if (j < i - 1) a[j + 1] = t;
  }
}
void main() {
  var list = [45, 3, 99, 100, 49, 34];
  print('Original List:');
  print(list);
  print('____________');
  print('After MergeSort:');
  selectionSort(list);
  print(list);
}

void selectionSort(List<int> a) {
  for (var i = 0; i < a.length - 1; i++) {
    var mi = i;
    for (var j = i + 1; j < a.length; j++) {
      if (a[j] < a[mi]) mi = j;
    }
    if (i != mi) {
      var t = a[i];
      a[i] = a[mi];
      a[mi] = t;
    }
  }
}
// The Time complexity of Quick Sort is : O(n*log n)
void main() {
  var list = [3,5,9,7,1];
  print('Original List');
  print(list);
  print('---------------------');
  print('Sorted using QuickSort:');
  print(quickSort(list));
}

List<int> quickSort(List<int> a) {
  if (a.length < 2) {
    return a;
  } else {
    var pivot = a[0];
    var less = <int>[];
    var greater = <int>[];
    a.removeAt(0);
    for (var i in a) {
      if (i <= pivot) {
        less.add(i);
      } else {
        greater.add(i);
      }
    }
    return quickSort(less) + [pivot] + quickSort(greater);
  }
}
List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }
  
  int middle = (arr.length ~/ 2);
  List<int> left = mergeSort(arr.sublist(0, middle));
  List<int> right = mergeSort(arr.sublist(middle));
  
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int leftIndex = 0;
  int rightIndex = 0;
  
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }
  
  while (leftIndex < left.length) {
    result.add(left[leftIndex]);
    leftIndex++;
  }
  
  while (rightIndex < right.length) {
    result.add(right[rightIndex]);
    rightIndex++;
  }
  
  return result;
}

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];
  print("Original array: $arr");
  List<int> sortedArr = mergeSort(arr);
  print("Sorted array: $sortedArr");
}

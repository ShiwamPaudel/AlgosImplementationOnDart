int binary_search(List a, int l, int r, int x) {
  if (r >= l) {
    int middle = (l + (r - l) / 2).toInt();

    //If the element is present at middle
    if (a[middle] == x) {
      return middle;
    }

    //If the element is smaller than middle
    if (a[middle] > x) {
      return binary_search(a, l, middle - 1, x);
    }

    return binary_search(a, middle + 1, r, x);
  }
  return -1;
}

void main() {
  List list = [99, 3, 5, 8, 13, 21, 34, 55, 89];  //Array of Elements
  int x = 55;  //Element to be Searched
  int n = list.length;
  int index = binary_search(list, 0, n - 1, x);
  print('list:');
  print(list);
  if (index != -1) {
    print('$x found at position: $index');
  } else {
    print('$x Not found');
  }
}
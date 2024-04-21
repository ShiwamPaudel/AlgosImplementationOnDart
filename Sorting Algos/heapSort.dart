void sort(List arr) {
  int n = arr.length;
  for (int i = (n / 2 - 1).round(); i >= 0; i--) {
    heapify(arr, n, i);
  }

  // Extracting Elements from the Heap
  for (int i = n - 1; i >= 0; i--) {
    var temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    heapify(arr, i, 0);
  }
}

void heapify(List arr, var n, int i) {
  var largest = i;
  int l = 2 * i + 1;
  var r = 2 * i + 2;

  // If left child is lager than root
  if (l < n && arr[l] > arr[largest]) largest = l;

  // If right child is larger than largest 
  if (r < n && arr[r] > arr[largest]) largest = r;

  // If largest is not root
  if (largest != i) {
    var swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;

    heapify(arr, n, largest);
  }
}

void main() {
  List list = [19, 48, 5, 7, 99, 10];
  sort(list);
  print("Sorted : $list");
}
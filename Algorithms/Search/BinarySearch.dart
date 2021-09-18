List BinarySearch(arr, item) {
  bool flag = false;
  int? index;

  int start = 0;
  int end = arr.length - 1;

  while (end >= start) {
    int mid = (start + end) ~/ 2;
    if (arr[mid] == item) {
      return [true, mid + 1];
    } else if (arr[mid] > item) {
      end = mid - 1;
    } else {
      start = mid + 1;
    }
  }
  print("object");
  return [flag, index];
}

main(List<String> args) {
  var arr = [1, 34, 46, 54, 65, 567, 668, 786, 4564, 5465, 8765464578];
  int find = 5465;
  var search = BinarySearch(arr, find);
  if (search[0]) {
    print("$find at " + search[1].toString() + " Index");
  } else {
    print("$find not exist in list");
  }
}

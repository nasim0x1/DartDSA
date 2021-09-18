List LinearSearch(arr, item) {
  bool flag = false;
  int? index;

  for (var i = 0; i <= arr.length - 1; i++) {
    if (arr[i] == item) {
      flag = true;
      index = i + 1;
    }
  }
  return [flag, index];
}

main(List<String> args) {
  var arr = [5465, 1, 34, 54, 668, 65, 4564, 567, 8765464578, 786, 46];
  int find = -1;
  var search = LinearSearch(arr, find);
  if (search[0]) {
    print("$find at " + search[1].toString() + " Index");
  } else {
    print("$find not exist in list");
  }
}

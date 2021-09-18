List bubble_sort_asc(arr) {
  for (int i = 0; i <= arr.length - 1; i++) {
    for (int j = i + 1; j <= arr.length - 1; j++) {
      if (arr[i] > arr[j]) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}

List bubble_sort_desc(arr) {
  for (int i = 0; i <= arr.length - 1; i++) {
    for (int j = i + 1; j <= arr.length - 1; j++) {
      if (arr[i] < arr[j]) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
      }
    }
  }
  return arr;
}

main(List<String> args) {
  var arr = [5465, 1, 34, 54, 668, 65, 4564, 567, 8765464578, 786, 46];
  print("ascending order : " + bubble_sort_asc(arr).toString());
  print("descending order : " + bubble_sort_desc(arr).toString());
}

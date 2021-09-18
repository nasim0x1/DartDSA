List selection_sort_asc(arr) {
  for (int i = 0; i <= arr.length - 1; i++) {
    var cur_min = i;
    for (int j = i + 1; j <= arr.length - 1; j++) {
      if (arr[j] < arr[cur_min]) {
        cur_min = j;
      }
    }
    var temp = arr[cur_min];
    arr[cur_min] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

List selection_sort_desc(arr) {
  for (int i = 0; i <= arr.length - 1; i++) {
    var cur_min = i;
    for (int j = i + 1; j <= arr.length - 1; j++) {
      if (arr[j] > arr[cur_min]) {
        cur_min = j;
      }
    }
    var temp = arr[cur_min];
    arr[cur_min] = arr[i];
    arr[i] = temp;
  }
  return arr;
}

main(List<String> args) {
  var arr = [5465, 1, 34, 54, 668, 65, 4564, 567, 8765464578, 786, 46];
  print("ascending order : " + selection_sort_asc(arr).toString());
  print("descending order : " + selection_sort_desc(arr).toString());
}

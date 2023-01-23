int search(List<int> inputList, int first, int last, int findElement) {
  if (first <= last) {
    // for check more than 1 element in the list
    int mid = (first + last) ~/ 2;
    if (findElement < inputList[mid]) {
      return search(inputList, first, mid - 1, findElement);
    } else if (findElement > inputList[mid]) {
      return search(inputList, mid + 1, last, findElement);
    } else {
      return mid; // is findElement equal middle
    }
  }
  return -1;
}

main() {
  List<int> numb = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(search(numb, numb.first, numb.last, 5));
}


main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(maximumInList(numbers));
  // print(binarySearch(numbers));
 int result= binarySearch(numbers, numbers.first, numbers.last, 8);

  print(result == -1? 'Element is not found in th list': 'Element is fount at index $result');
}

int maximumInList(List<int> inputCollection) {
  List<int> newCollection = [...inputCollection];
  if (newCollection.length > 1) {
    if (newCollection.first > newCollection.last) {
      newCollection.removeLast();
    } else if (newCollection.first < newCollection.last) {
      newCollection.remove(newCollection.first);
    }
   return maximumInList(newCollection);
  }
   return newCollection[0];
}

// int maxim() {
//   int max = numbers[0];
//   for (int i = 0; i < numbers.length; i++) {
//     if (numbers[i] > max) {
//       max = numbers[i];
//     }
//   }
//   return max;
// }
// باینری سرچ با تابع بازگشتی بزنید

int binarySearch(List<int> collection, int first, int last, int findElement) {
  List<int> newCollection=[...collection];
  if (first <= last) {
    int mid = (first+last) ~/ 2;
    if (findElement==newCollection[mid]) {
      return mid;
    }
    else if (findElement < newCollection[mid]) {
      return binarySearch(newCollection, first, mid - 1, findElement);
    }
    else if (findElement > newCollection[mid]) {
      return binarySearch(newCollection, mid + 1, last, findElement);
    }
  }
  return -1;
}


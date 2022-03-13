library sortero;

extension Sortero on List{
  //Bubble sort
  void bubbleSort({
    required num Function(dynamic item) compare,
    bool reverseOrder = false,
  }){
    List<num> computationResults = [];
    List<int> itemsIndexes = [];
    List savedCopy = toList();
    //Compute results
    for(int i = 0; i < length; i++){
      computationResults.add(compare(this[i]));
      itemsIndexes.add(i);
    }
    //Sort computation results and change its indexes from place
    bool mayRequireMoreSorting;
    int iterationCap = computationResults.length - 1;
    do{
      //Reset variable
      mayRequireMoreSorting = false;
      if(reverseOrder){
        for(int i = 0; i < iterationCap; i++){
          num a = computationResults[i];
          num b = computationResults[i + 1];
          if(a < b){
            int aIndex = itemsIndexes[i];
            int bIndex = itemsIndexes[i + 1];
            //Swap the results
            computationResults[i] = b;
            computationResults[i + 1] = a;
            //Swap the place of indexes
            itemsIndexes[i] = bIndex;
            itemsIndexes[i + 1] = aIndex;
            mayRequireMoreSorting = true;
          }
        }
      }else{
        for(int i = 0; i < iterationCap; i++){
          num a = computationResults[i];
          num b = computationResults[i + 1];
          if(a > b){
            int aIndex = itemsIndexes[i];
            int bIndex = itemsIndexes[i + 1];
            computationResults[i] = b;
            computationResults[i + 1] = a;
            //Swap the place of indexes
            itemsIndexes[i] = bIndex;
            itemsIndexes[i + 1] = aIndex;
            mayRequireMoreSorting = true;
          }
        }
      }
    }while(mayRequireMoreSorting);
    //Overwrite List with the new content
    removeWhere((item) => true);
    for(int i = 0; i < itemsIndexes.length; i++){
      add(savedCopy[itemsIndexes[i]]);
    }
  }
}
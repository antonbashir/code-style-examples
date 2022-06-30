class FunctionsExample {
  void excellentFunction() {
    // Хороший код тот, которого нет))
  }

  void bestFunction(List<int> array) =>
      array.map((element) => element + 1).toList();

  void goodFunction(List<int> array) {
    for (int index = 0; index < array.length; index++) {
      array[index] = array[index] + 1;
    }
  }

  void badFunction(List<int> array) {
    array[0] = array[0] + 1;
    array[1] = array[1] + 1;
    array[2] = array[2] + 1;
    array[3] = array[3] + 1;
    array[4] = array[4] + 1;
    array[5] = array[5] + 1;
    array[6] = array[6] + 1;
    array[7] = array[7] + 1;
    array[8] = array[8] + 1;
    array[9] = array[9] + 1;
    array[10] = array[10] + 1;
  }

  void killMePlease() {
    // Уберите детей от экрана: https://github.com/EpicGames/UnrealEngine/blob/release/Engine/Source/Runtime/Engine/Private/UnrealEngine.cpp
  }
}

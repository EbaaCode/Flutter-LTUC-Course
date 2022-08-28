void main() {
  List colors = ["red", "blue", "green", "black", "white", "aqua", "lime"];
  for (int i = 0; i < colors.length; i++) {
    if (colors[i][0] == "a") {
      print(colors[i].toUpperCase());
    } else if (colors[i][0] == "b") {
      print(colors[i].toUpperCase());
    } else {
      print("Sorry the color ${colors[i]} only contains ${colors[i].length} characters and it doesn't start with A or B.");
    }
  }
}

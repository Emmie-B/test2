class User {
  static const String PassionCooking = "Cooking";
  static const String PassionFighting = "Fighting";
  static const String PassionSinging = "Singing";

  String firstname = "";
  String lastname = "";
  Map<String, bool> passions = {
    PassionCooking: false,
    PassionFighting: false,
    PassionSinging: false,
  };
  bool newsletter = false;

  save() {
    print("Saved");
  }
}

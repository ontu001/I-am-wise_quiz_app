void main() {
  car v = car();
  v.refule();
}

class vechale {
  void start() {
    print("Start the car");
  }

  void control() {
    print("control the car");
  }

  void refule() {
    print("refuel the car");
  }
}

class car extends vechale {
  void smartControl() {
    print("turn on smnart control");
  }
}

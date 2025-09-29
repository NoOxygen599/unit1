void click() {
  mouseReleased = false;
  if (mousePressed) wasPressed = true;
  if (wasPressed && !mousePressed) {
    mousedReleased = true;
    wasPressed = false;
  }
}

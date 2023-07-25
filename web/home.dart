import 'dart:html';

void render(Element appElement) {
  print(appElement);
  var homeElement = DivElement()..text = 'home page';
  appElement.append(homeElement);
}

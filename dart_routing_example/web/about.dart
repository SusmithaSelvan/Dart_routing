import 'dart:html';

void render(Element appElement) {
  print(appElement);
  var aboutElement = DivElement()..text = 'about page';
  appElement.append(aboutElement);
}

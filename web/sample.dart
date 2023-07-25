import 'dart:html';

void render(Element appElement) {
  print(appElement);
  var homeElement = DivElement()..text = 'sample page';
  appElement.append(homeElement);
}
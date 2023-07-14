import 'dart:html';

void render(Element appElement) {

  final url = Uri.parse(window.location.href);
  print('contact dart page');
  print(url);
  final name = url.queryParameters['name'];
  print(name);
  final userDetails = DivElement()..text = 'Name: $name';

  // document.getElementById('app')?.append(userDetails);
  appElement.append(userDetails);

}



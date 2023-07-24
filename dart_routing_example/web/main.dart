import 'dart:html';
import 'home.dart' deferred as home;
import 'about.dart' deferred as about;
import 'contact.dart' deferred as contact;
import 'sample.dart' deferred as sample;

void main() {
  // querySelector('#output')?.text = 'Your Dart app is running.';

  renderScreen(window.location.pathname);
  print(window.location.pathname);
  final form = querySelector('#myForm') as FormElement?;
  print(form);
  form?.onSubmit.listen(handleFormSubmit);
  print('main dart page');
}

void renderScreen(String? route) async {
  var appElement = querySelector('#app');

  appElement?.innerHtml = '';

  var nonNullableRoute = route ?? '/';
  print(nonNullableRoute);

  if (nonNullableRoute == '/home.html') {
    await home.loadLibrary();
    home.render(appElement!);
  } else if (nonNullableRoute == '/about.html') {
    await about.loadLibrary();
    about.render(appElement!);
  } else if (nonNullableRoute == '/contact.html') {
    await contact.loadLibrary();
    contact.render(appElement!);
  }else if (nonNullableRoute == '/sample.html') {
    await sample.loadLibrary();
    sample.render(appElement!);
  }
}

void handleFormSubmit(Event event) {
  event.preventDefault(); // Prevent the form from submitting

  final form = querySelector('#myForm') as FormElement;
  final nameInput = form.querySelector('#name') as InputElement;

  final name = nameInput.value;
  print(name);

  final url = Uri(path: 'contact.html', queryParameters: {'name': name});
  print(url);
  window.location.href = url.toString();
}

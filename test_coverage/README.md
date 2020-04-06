# test_coverage

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

##Instalation
- Install lcov 
   git clone https://github.com/linux-test-project/lcov.git
- Setup config with path environment

- Run :
  flutter test --coverage ./lib
  
- Show html report
  genhtml -o coverage coverage/lcov.info
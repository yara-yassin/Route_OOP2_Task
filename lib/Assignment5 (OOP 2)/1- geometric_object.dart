import 'dart:io';
import 'dart:math';

abstract class GeometricObject {
  String color;
  bool filled;

  GeometricObject({this.color = 'white', this.filled = false});

  GeometricObject.withValues({required this.color, required this.filled});

  @override
  String toString();
}

class Triangle extends GeometricObject {
  Triangle({
    this.side1 = 1.0,
    this.side2 = 1.0,
    this.side3 = 1.0,
    super.color,
    super.filled,
  });

  Triangle.withValues({
    required this.side1,
    required this.side2,
    required this.side3,
    super.color,
    super.filled,
  });

  double side1;
  double side2;
  double side3;

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  String toString() {
    return "Triangle: side1 = $side1, side2 = $side2, side3 = $side3";
  }
}

class Rectangle extends GeometricObject {
  Rectangle({this.height = 1.0, this.width = 1.0, super.color, super.filled});

  Rectangle.withValues({
    required this.height,
    required this.width,
    super.color,
    super.filled,
  });

  double height;
  double width;

  double getPerimeter() {
    return 2 * (width + height);
  }

  double getArea() {
    return width * height;
  }

  @override
  String toString() {
    return 'Rectangle: height = $height, width = $width';
  }
}

// first Solution:
void main() {
  print("Triangle 1:");
  Triangle triangle1 = Triangle.withValues(
    side1: 3,
    side2: 4,
    side3: 5,
    color: 'black',
    filled: true,
  );
  print(triangle1.toString());
  print("Triangle Area = ${triangle1.getArea()}");
  print("Triangle Perimeter = ${triangle1.getPerimeter()}");
  print(
    "Triangle color is ${triangle1.color} and filled is ${triangle1.filled} ",
  );
  print('----------------------------------------------------------\n');
  print("Triangle 2:");
  Triangle triangle2 = Triangle(side1: 3, side2: 4, side3: 5);
  print(triangle2.toString());
  print("Triangle Area = ${triangle2.getArea()}");
  print("Triangle Perimeter = ${triangle2.getPerimeter()}");
  print(
    "Triangle color is ${triangle2.color} and filled is ${triangle2.filled} ",
  );
  print('----------------------------------------------------------\n');
  print("Rectangle 1:");
  Rectangle rectangle1 = Rectangle.withValues(
    width: 4,
    height: 5,
    color: 'blue',
    filled: false,
  );
  print(rectangle1.toString());
  print("Rectangle Area = ${rectangle1.getArea()}");
  print("Rectangle Perimeter = ${rectangle1.getPerimeter()}");
  print(
    "Rectangle color is ${rectangle1.color} and filled is ${rectangle1.filled} ",
  );
  print('----------------------------------------------------------\n');
  print("Rectangle 2:");
  Rectangle rectangle2 = Rectangle(width: 4, height: 5);
  print(rectangle2.toString());
  print("Rectangle Area = ${rectangle2.getArea()}");
  print("Rectangle Perimeter = ${rectangle2.getPerimeter()}");
  print(
    "Rectangle color is ${rectangle2.color} and filled is ${rectangle2.filled} ",
  );
  print('----------------------------------------------------------\n');
}
// Second Solution:

// void main() {
//   stdout.write("Enter the first side value = ");
//   double? side1 = double.tryParse(stdin.readLineSync() ?? '');
//   stdout.write("Enter the second side value = ");
//   double? side2 = double.tryParse(stdin.readLineSync() ?? '');
//   stdout.write("Enter the third side value = ");
//   double? side3 = double.tryParse(stdin.readLineSync() ?? '');
//   print("Triangle 1:");
//   Triangle triangle1 = Triangle.withValues(
//     side1: (side1 == null) ? 0.0 : side1,
//     side2: (side2 == null) ? 0.0 : side2,
//     side3: (side3 == null) ? 0.0 : side3,
//     color: 'black',
//     filled: true,
//   );
//   print(triangle1.toString());
//   print("Triangle Area = ${triangle1.getArea()}");
//   print("Triangle Perimeter = ${triangle1.getPerimeter()}");
//   print(
//     "Triangle color is ${triangle1.color} and filled is ${triangle1.filled} ",
//   );
//   print('----------------------------------------------------------\n');
//
//   print("Triangle 2:");
//   Triangle triangle2 = Triangle(
//     side1: (side1 == null) ? 0.0 : side1,
//     side2: (side2 == null) ? 0.0 : side2,
//     side3: (side3 == null) ? 0.0 : side3,
//   );
//   print(triangle2.toString());
//   print("Triangle Area = ${triangle2.getArea()}");
//   print("Triangle Perimeter = ${triangle2.getPerimeter()}");
//   print(
//     "Triangle color is ${triangle2.color} and filled is ${triangle2.filled} ",
//   );
//   print('----------------------------------------------------------\n');
//
//   stdout.write("Enter the width value = ");
//   double? width = double.tryParse(stdin.readLineSync() ?? '');
//   stdout.write("Enter the height value = ");
//   double? height = double.tryParse(stdin.readLineSync() ?? '');
//   print("Rectangle 1:");
//   Rectangle rectangle1 = Rectangle.withValues(
//     width: (width == null) ? 0.0 : width,
//     height: (height == null) ? 0.0 : height,
//     color: 'blue',
//     filled: false,
//   );
//   print(rectangle1.toString());
//   print("Rectangle Area = ${rectangle1.getArea()}");
//   print("Rectangle Perimeter = ${rectangle1.getPerimeter()}");
//   print(
//     "Rectangle color is ${rectangle1.color} and filled is ${rectangle1.filled} ",
//   );
//   print('----------------------------------------------------------\n');
//
//   print("Rectangle 2:");
//   Rectangle rectangle2 = Rectangle(
//     width: (width == null) ? 0.0 : width,
//     height: (height == null) ? 0.0 : height,
//   );
//   print(rectangle2.toString());
//   print("Rectangle Area = ${rectangle2.getArea()}");
//   print("Rectangle Perimeter = ${rectangle2.getPerimeter()}");
//   print(
//     "Rectangle color is ${rectangle2.color} and filled is ${rectangle2.filled} ",
//   );
//   print('----------------------------------------------------------\n');
// }

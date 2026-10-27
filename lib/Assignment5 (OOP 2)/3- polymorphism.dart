abstract class Shape {
  String color;

  Shape({required this.color});

  double getArea();

  @override
  String toString();
}

class Rectangle extends Shape {
  Rectangle({required super.color, required this.length, required this.width});

  int length;
  int width;

  @override
  double getArea() {
    return (length * width).toDouble();
  }

  @override
  String toString() {
    return 'Rectangle: color= $color, length= $length, width= $width';
  }
}

class Triangle extends Shape {
  Triangle({required super.color, required this.base, required this.height});

  int base;
  int height;

  @override
  double getArea() {
    return 0.5 * base * height;
  }

  @override
  String toString() {
    return 'Rectangle: color= $color, base= $base, height= $height';
  }
}

void main() {
  Shape rect = Rectangle(length: 5, width: 4, color: 'Red');
  print(rect.toString());
  print("Area = ${rect.getArea()}\n");

  Shape triangle = Triangle(base: 6, height: 3, color: 'Blue');
  print(triangle.toString());
  print("Area = ${triangle.getArea()}");
}

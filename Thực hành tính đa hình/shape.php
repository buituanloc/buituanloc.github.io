<?php
interface Shape {
    public function calculateArea();
    public function calculatePerimeter();
}

class Rectangle implements Shape {
    private $length;
    private $width;

    public function __construct($length, $width) {
        $this->length = $length;
        $this->width = $width;
    }

    public function calculateArea() {
        return $this->length * $this->width;
    }

    public function calculatePerimeter() {
        return 2 * ($this->length + $this->width);
    }
}

class Square implements Shape {
    private $edge;

    public function __construct($edge) {
        $this->edge = $edge;
    }

    public function calculateArea() {
        return $this->edge * $this->edge;
    }

    public function calculatePerimeter() {
        return 4 * $this->edge;
    }
}

$rectangle = new Rectangle(4, 6);
echo "Diện tích hình chữ nhật: " . $rectangle->calculateArea() . "<br>";
echo "Chu vi hình chữ nhật: " . $rectangle->calculatePerimeter() . "<br>";
echo "____________________________________________________________" . "<br><br>";
$square = new Square(4);
echo "Diện tích hình vuông: " . $square->calculateArea() . "<br>";
echo "Chu vi hình vuông: " . $square->calculatePerimeter() . "<br>";
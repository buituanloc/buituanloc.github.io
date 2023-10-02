<?php
abstract class Shape{
    protected $name;
    public function __construct($name)
    {
        $this->name = $name;
    }
    abstract public function calculateArea();
}
class Circle extends Shape {
    private $radius;
    public function __construct($name, $radius)
    {
        parent::__construct($name);
        $this->radius = $radius;
    }
    public function calculateArea()
    {
        // TODO: Implement calculateArea() method.
        return 3.14 * 2 * $this->radius;
    }
}

class Rectancle extends Shape
{
    private $length;
    private $width;

    public function __construct($name, $length, $width)
    {
        parent::__construct($name);
        $this->length = $length;
        $this->width = $width;
    }

    public function calculateArea()
    {
        return $this->length * $this->width;
    }

}
class Square extends Shape {
    private $side;
    public function __construct($name, $side)
    {
        parent::__construct($name);
        $this->side = $side;
    }
    public function calculateArea()
    {
        // TODO: Implement calculateArea() method.
        return $this->side * $this->side;
    }
}

function greeting($shapes)
{
    foreach ($shapes as $shape) {
        echo $shape->greet() . '<br>';
    }
}

$shapes = [ new Circle(4), new Rectancle(4,6), new Square(4)];
greeting($shapes);
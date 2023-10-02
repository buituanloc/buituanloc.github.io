<?php
interface Borrowable{
    public function borrow();
    public function returnItem();
}

   Class Book implements Borrowable{
       private $title;
       private $author;
       private $isBrrowed;

       // viết hàm khởi tạo class
       public function __construct($title, $author, $isBrrowed) {
           $this->title = $title;
           $this->author = $author;
           $this->isBrrowed = $isBrrowed;
       }

       public function borrow() {
           if (!$this->isBrrowed) {
               $this->isBrrowed = true;
               echo "Sách '{$this->title}' của '{$this->author}' đã được mượn." . "<br>";
           } else {
               echo "Sách đã được mượn ." . "<br>";
           }
       }

       public function returnItem() {
           $this->isBorrowed = false;
           echo "Sách '{$this->title}' của '{$this->author}' đã được trả." . "<br>";
       }

   }

   Class Paper implements Borrowable{
       private $title;
       private $date;
       private $isBorrowed;
       public function __construct($title, $date, $isBrrowed) {
           $this->title = $title;
           $this->date = $date;
           $this->isBrrowed = $isBrrowed;
       }

       public function borrow() {
           if (!$this->isBrrowed) {
               $this->isBrrowed = true;
               echo "Sách '{$this->title}' của '{$this->author}' đã được mượn." . "<br>";
           } else {
               echo "Sách đã được mượn."  . "<br>";
           }
       }

       public function returnItem() {
           $this->isBorrowed = false;
           echo "Sách '{$this->title}' của '{$this->author}' đã được trả." . "<br>";
       }
   }
<?php

class IndexModel extends Model
{
    public $view = 'index';
    public $title;

    function __construct()
    {
        parent::__Construct();
        $this->title .= "home";
    }

    public function index($data = NULL, $deep = 0)    //Метод с использованием классов для вывода категорий товаров
    {
        $result['products'] = Product::TopProduct(8);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;
    }
/*
    public function view_all()
    {
      //  $this->view .= "/" . __FUNCTION__ . '.php';
      //  $result['products'] = Product::AllTopProduct();
      //  return $result;
    }
*/

}
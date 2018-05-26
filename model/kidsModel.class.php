<?php


class kidsModel extends Model
{
    public $view = 'kids';
    public $title;

    public function __construct()
    {
        parent::__Construct();
        $this->title .= "Kids";
    }


    public function index($data = NULL, $deep = 0)
    {
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['products'] = Product::PageProduct(9, 7);
        $result['list'] = Product::CategoryList(7);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;
    }
}
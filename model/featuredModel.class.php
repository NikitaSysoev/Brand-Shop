<?php


class featuredModel extends Model
{
    public $view = 'featured';
    public $title;

    public function __construct()
    {
        parent::__Construct();
        $this->title .= "Featured";
    }



    public function index($data = NULL, $deep = 0)
    {
        $this->view .= "/" . __FUNCTION__ . '.php';
       $result['products'] = Product::TopProduct(9);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
       // $result['product'] = Product::AllStatusProduct(2);
        //$result['new_product'] = Product::NewProduct();
        //$result['sale_product'] = Product::StatusProduct();
        return $result;
    }
}
<?php


class menModel extends Model
{
    public $view = 'men';
    public $title;

    public function __construct()
    {
        parent::__Construct();

    }


    public function index($data = NULL, $deep = 0)
    {
        $this->title .= "Men";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['products'] = Product::PageProduct(9, 5);
        $result['list'] = Product::CategoryList(5);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;
    }

    public function sweatshirts($data = NULL, $deep = 0)
    {
        $this->title .= "Sweatshirts";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 4);
        return $result;
    }

    public function polos($data = NULL, $deep = 0)
    {
        $this->title .= "Polos";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 7);
        return $result;
    }

    public function shirts($data = NULL, $deep = 0)
    {
        $this->title .= "Shirts";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 8);
        return $result;
    }

    public function tanks($data = NULL, $deep = 0)
    {
        $this->title .= "Tanks";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 13);
        return $result;
    }

    public function sweaters($data = NULL, $deep = 0)
    {
        $this->title .= "Sweaters";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 16);
        return $result;
    }
}
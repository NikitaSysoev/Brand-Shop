<?php


class womenModel extends Model
{
    public $view = 'women';
    public $title;

    public function __construct()
    {
        parent::__Construct();

    }


    public function index($data = NULL, $deep = 0)
    {
        $this->title .= "Women";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['products'] = Product::PageProduct(9, 6);
        $result['list'] = Product::CategoryList(6);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;
    }

    public function accessories($data = NULL, $deep = 0)
    {
        $this->title .= "Accessories";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 1);
        return $result;
    }

    public function dresses($data = NULL, $deep = 0)
    {
        $this->title .= "Dresses";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 2);
        return $result;
    }

    public function denim($data = NULL, $deep = 0)
    {
        $this->title .= "Denim";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 3);
        return $result;
    }

    public function jackets ($data = NULL, $deep = 0)
    {
        $this->title .= "Jackets";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 5);
        return $result;
    }

    public function shorts($data = NULL, $deep = 0)
    {
        $this->title .= "Shorts";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 10);
        return $result;
    }

    public function knits($data = NULL, $deep = 0)
    {
        $this->title .= "Knits";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 11);
        return $result;
    }

    public function tops($data = NULL, $deep = 0)
    {
        $this->title .= "Tops";
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        $result['products'] = Product::CategoryProduct(9, 14);
        return $result;
    }
}
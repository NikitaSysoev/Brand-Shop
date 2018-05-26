<?php
/**
 * Created by PhpStorm.
 * User: Nikita S
 * Date: 16.04.2018
 * Time: 19:55
 */

class hotdealsModel extends Model
{
    public $view = 'hotdeals';
    public $title;

    public function __construct()
    {
        parent::__Construct();
        $this->title .= "Hot deals";
    }


    public function index($data = NULL, $deep = 0)
    {
        $this->view .= "/" . __FUNCTION__ . '.php';
        $result['products'] = Product::PageProduct(9, 10);
        $result['list'] = Product::CategoryList(10);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;
    }
}
<?php


class goodModel extends Model
{
    public $view = 'good';
    public $title;

    function __construct()
    {
        parent::__Construct();
        $this->title .= "Good";
    }

    public function index($data = NULL, $deep = 0)
    {

    }


    public function good($data)
    {
        $this->view .= "/" . __FUNCTION__ . '.php';
        db::getInstance()->Query('UPDATE `goods` SET `view` = `view` + 1 where id_good = "'. $data['id'] .'"');
        $result['product'] = db::getInstance()->Select('select * from goods where id_good = "'. $data['id'] .'"');
        $result['products'] = Product::NewProduct(4);
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;

    }


}

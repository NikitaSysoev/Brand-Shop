<?php
/**
 * Created by PhpStorm.
 * User: Nikita S
 * Date: 15.04.2018
 * Time: 15:54
 */

class catalogController
{
    public $view = 'catalog';


    public function index()
    {
        $this->view .= "/" . __FUNCTION__ . '.php';
        echo $this->controller_view();
    }


    public function __call($methodName, $args)
    {
        $result = $this->sub_catalog($args[0]);
        return $result;
    }


    public function sub_catalog($data)
    {
        $this->view .= "/" . __FUNCTION__ . '.php';
        echo $this->controller_view();
    }

}
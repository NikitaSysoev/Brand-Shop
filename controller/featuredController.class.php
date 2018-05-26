<?php


class featuredController extends Controller
{
    public $view = 'featured';

    public function index()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }
}
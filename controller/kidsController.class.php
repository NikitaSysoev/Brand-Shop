<?php


class kidsController extends Controller
{
    public $view = 'kids';

    public function index()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }
}
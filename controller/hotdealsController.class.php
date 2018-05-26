<?php

class hotdealsController extends Controller
{
    public $view = 'hotdeals';

    public function index()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }
}
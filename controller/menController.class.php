<?php

class menController extends Controller
{
    public $view = 'men';

    public function index()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function sweatshirts($data = NULL, $deep = 0)
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function polos($data = NULL, $deep = 0)
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function shirts($data = NULL, $deep = 0)
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function tanks($data = NULL, $deep = 0)
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function sweaters($data = NULL, $deep = 0)
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }
}
<?php


class womenController extends Controller
{
    public $view = 'women';

    public function index()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function accessories()
    {
       $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function dresses()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function denim()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function jackets()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function shorts()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function knits()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }

    public function tops()
    {
        $this->view .= "/".__FUNCTION__.'.php';
        echo $this->controller_view();
    }


}
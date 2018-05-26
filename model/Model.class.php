<?php

class Model
{
    public $view = 'index';
    public $title;




    function __construct()
    {	
        $this->title = Config::get('sitename');
    }



    public function index($data = NULL, $deep = 0)
    {
        $result['men'] = Product::CategoryList(5);
        $result['women'] = Product::CategoryList(6);
        return $result;

    }

	
	public function __call($methodName, $args) 
	{
    	header("Location: Config::get('domain')/page404/");
  	}
	







}
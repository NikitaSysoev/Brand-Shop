<?php

class registerModel extends Model
{
    public $view = 'register';
    public $title;

    public function __construct()
    {
        parent::__Construct();
        $this->title .= "Registration";
    }



    public function index($data = NULL, $deep = 0)
    {

        $this->view .= "/" . __FUNCTION__ . '.php';


    }

    public function add($data)
    {

        $isUser = 1;
        $isPass = 1;
        $sql = "SELECT Users.login FROM `users` WHERE `login` = :login";
        $result['login'] = db::getInstance()->Select($sql,['login' => $data['login']])[0];



        if ($result['login'])
        {
            $isUser = 1;
        }
        else
        {
            if ($data['pass'] == $data['pass2'])
            {
                $isUser = 0;
                $isPass = 0;

                $data['pass'] = Auth::registerUser($data['pass']);
                $sql = 'INSERT INTO `Users` (`id_user`, `login`, `pass`, `prim`, `surname`, `name`, `patronymic`, `telephone`, `email`, `age`, `gender`, `comments`) VALUES (NULL, :login, :pass, :comments, :surname, :name, :patronymic, :telephone, :email, :age, :gender, :comments);';
                db::getInstance()->Query($sql, $data);
            }
            else
            {
                $isUser = 0;
                $isPass = 1;
            }
        }


        $result['isUser'] = $isUser;
        $result['isPass'] = $isPass;

        return $result;

    }
}
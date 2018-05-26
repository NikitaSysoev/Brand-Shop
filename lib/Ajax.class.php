<?php

class Ajax
{
    public static $views;

    public static function register()
    {
        self::$views = 'auth.html';
        return ['isAuth' => Auth::logIn($_POST['login'], $_POST['pass'], $_POST['rememberme'])];
    }

    public static function register2()
    {
        self::$views = 'checkout-backup.html';
        return ['isAuth' => Auth::logIn($_POST['login2'], $_POST['password2'], true)];
    }

    public static function view_all()
    {
        self::$views = 'products.html';
        $result['products'] = Product::AllTopProduct();
        return ['content_data' => $result];
    }


    public static function add_basket_one()
    {
        self::$views = 'basket.html';
        $isAuth = Auth::logIn();
        Basket::addGoods($_POST['uid'], 1, $_POST['pricegood'], $isAuth);
    }

    public static function add_basket()
    {
       self::$views = 'basket.html';
       $isAuth = Auth::logIn();
       $_POST['count_goods'] = isset($_POST['count_goods']) ? (int)$_POST['count_goods'] : 1;
       Basket::addGoods($_POST['uid'], $_POST['count_goods'], $_POST['pricegood'], $isAuth);
    }

    public static function clear_basket_good()
    {
        self::$views = 'basket.html';
        $isAuth = Auth::logIn();
        $_POST['sumpricegood'] = isset($_POST['sumpricegood']) ? (int)$_POST['sumpricegood'] : 0;
        $_POST['count_good'] = isset($_POST['count_goods']) ? (int)$_POST['count_goods'] : 1;
        Basket::ClearBasket($isAuth, $_POST['uid'], $_POST['sumpricegood'], $_POST['del_good']);
    }

    public static function clear_basket_cart()
    {
       self::$views = 'cart.html';
        $isAuth = Auth::logIn();
        Basket::ClearBasket($isAuth, $_POST['uid'], $_POST['subtotal'], $_POST['dele_good']);
    }

    public static function clear_all()
    {
        self::$views = 'basket.html';
        $isAuth = Auth::logIn();
        Basket::ClearBasket($isAuth, null,0,0);
    }

    public static function subscribe()
    {
        self::$views = 'subscribe.html';

        $mail = $_POST['mail'];
        $regExp = '/^\w+\.?-?\w+@\w+\.\w+$/';
        if (preg_match($regExp, $mail)) {
            $mail = strip_tags($mail);
            $mail = htmlspecialchars($mail);
            $mail = stripslashes($mail);
            $mail = addslashes($mail);
            // проверяем есть ли такой e-mail уже в бд
            $sql = db::getInstance()->Select("select * from `for_dispatch` where `e-mail`='$mail'");
            // если нет, отправляем в бд
            if (!$sql){
                db::getInstance()->Select("insert into `for_dispatch` (`e-mail`) value ('$mail')");
            }
        }

    }
}
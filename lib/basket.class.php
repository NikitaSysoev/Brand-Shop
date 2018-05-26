<?php

class Basket
{

//Метод, показывающий общую информацию о корзине. В данный момент представленна в виде заглушки
    public static function basketInfo()
    {
        $basket = $_SESSION['basket'];
        $isAuth = Auth::logIn();

        if ($isAuth) {
            self::basketIsAuth();
        }

        //  if ($_COOKIE['basket']) {
        //      self::BasketSessionCookie();
        //   }

        //Составим массив для отправки в браузер
        $result['basket_price'] = $basket['basket_price'];
        $result['basket_count_good'] = $basket['basket_count_good'];
        $result['products_in_basket'] = $basket['products_in_basket'];
        return $result;
    }


//В случае, если пользователь авторизован, то берем корзину из БД и сохраняем ее в сессии
    public static function basketIsAuth()
    {

        $id_user = $_SESSION['IdUserSession'];

/*        $basket = $_SESSION['basket'];
        $arr = $basket['products_in_basket'];
        if (is_array($arr)) {
            foreach ($arr as $key => $item) {
                self::addGoods($item['id_uuid'], $item['count'], $item['price'], true);
            }
        }*/

        $basket['basket_price'] = db::getInstance()->Select("select sum(basket.count*goods.price) as f from basket inner join goods on basket.id_uuid = goods.id_uuid where basket.id_user = (select id_user from users_auth where hash_cookie ='$id_user')");
        $basket['basket_count_good'] = db::getInstance()->Select("select sum(basket.count) as n from basket where id_user = (select id_user from users_auth where hash_cookie = '$id_user')");
        $basket['products_in_basket'] = db::getInstance()->Select("SELECT goods.id_good, basket.id_uuid, basket.count, goods.name, goods.rating, goods.price, goods.foto FROM basket inner join goods on basket.id_uuid = goods.id_uuid where basket.id_user =(select id_user from users_auth where hash_cookie = '$id_user')");

        $_SESSION['basket'] = $basket;
    }

//Соединяем корзину из сессии с корзиной из cookie
    public static function BasketSessionCookie()
    {
        if ($_SESSION['basket']) {
            $mass_basket_json = json_decode($_COOKIE['basket'], true);
            if (is_array($mass_basket_json)) {
                $basket = array_merge($mass_basket_json, $_SESSION['basket']);
            }
        }

        $_SESSION['basket'] = $basket;
    }


//Добавление товара в корзину
    public static function addGoods($data_product_guid, $count_goods = 1, $price_good, $isAuth = false)
    {

        $basket = $_SESSION['basket'];
        $count_goods = $count_goods == '' ? 1 : (int)$count_goods;

        if ($isAuth) {
            $idUserSession = $_SESSION['IdUserSession'];
            //Создадим ззапрос для проверки наличия записи в БД
            $sql['sql'] = "select * from basket where ID_UUID = :data_product_guid and id_user = (select id_user from users_auth where hash_cookie = :idUserSession)";
            $sql['param'] =
                [
                    'data_product_guid' => $data_product_guid,
                    'idUserSession' => $idUserSession,
                ];

            $goods_basket = db::getInstance()->SelectRow($sql['sql'], $sql['param']);


            $id = $goods_basket['id'];
            if ($goods_basket) //Если товар имеется в корзине
            {
                $sql['sql'] = "update basket set basket.count = basket.count+:count_goods where id = :id";
                $sql['param'] =
                    [
                        'id' => $id,
                        'count_goods' => $count_goods,
                    ];
                db::getInstance()->Query($sql['sql'], $sql['param']);
            } else {
                $sql['sql'] = "insert into basket (id_uuid, count, id_user) value (:data_product_guid, :count_goods, (select id_user from users_auth where hash_cookie = :idUserSession))";
                $sql['param'] =
                    [
                        'data_product_guid' => $data_product_guid,
                        'count_goods' => $count_goods,
                        'idUserSession' => $idUserSession,
                    ];
                db::getInstance()->Query($sql['sql'], $sql['param']);
            }
        }


        $db_basket = db::getInstance()->SelectRow("select goods.id_good, goods.id_uuid, goods.name, goods.rating, goods.price, goods.foto from goods where id_uuid = '$data_product_guid'");
        $db_basket['count'] = $count_goods;
        $basket['basket_price'][0]['f'] += $price_good * $count_goods;
        $basket['basket_count_good'][0]['n'] += $count_goods;


        $idKey = null;
        foreach ($basket['products_in_basket'] as $key => $array) {
            if ($array['id_uuid'] == $data_product_guid) {
                $idKey = $key;
                break;
            }
        }

        if (is_null($idKey)) {
            $basket['products_in_basket'][] = $db_basket;
        }

        if (!is_null($idKey)) {
            $basket['products_in_basket'][$idKey]['count'] += $count_goods;
        }

        //$basket['basket_count_good'][0][n] = 0;
        //$basket['basket_price'][0][f] = 0;
        // $basket['products_in_basket'] = 0;
        $_SESSION['basket'] = $basket;

        $mass_basket_json = json_encode($basket);
        setcookie('basket', $mass_basket_json, TIME_COOKIE_BASKET, '/');

    }


//Очистка корзины полная или выборочная запись
    public static function ClearBasket($isAuth = false, $uuid = NULL, $sum_price, $del_count)
    {
        $basket = $_SESSION['basket'];

        if ($uuid) {
            $idKey = null;
            foreach ($basket['products_in_basket'] as $key => $array) {

                if ($array['id_uuid'] == $uuid) {
                    $idKey = $key;
                    break;
                }
            }

            if (!is_null($idKey)) {
                unset($basket['products_in_basket'][$idKey]);
            }

            $basket['basket_price'][0][f] = $basket['basket_price'][0][f] - $sum_price;
            $basket['basket_count_good'][0][n] = $basket['basket_count_good'][0][n] - $del_count;
            //  unset($basket[$uuid]);
            if ($isAuth) {
                $sql['sql'] = "DELETE FROM basket WHERE basket.id_uuid = :uuid";
                $sql['param'] = [
                    'uuid' => $uuid,
                ];
                db::getInstance()->Query($sql['sql'], $sql['param']);
            }
        } else {
            if ($isAuth) {
                $idUserSession = $_SESSION['IdUserSession'];
                $sql['sql'] = "DELETE FROM `basket` WHERE `basket`.`id_user` = (select id_user from users_auth where hash_cookie = :idUserSession)";
                $sql['param'] = [
                    'idUserSession' => $idUserSession,
                ];
                db::getInstance()->Query($sql['sql'], $sql['param']);
            }
            //unset($basket);
            foreach ($basket['products_in_basket'] as $key => $array) {
                unset($basket['products_in_basket'][$key]);
            }
            $basket['basket_price'][0][f] = 0;
            $basket['basket_count_good'][0][n] = 0;
        }

        // Так же делаем запись в сессиях и куках
        $_SESSION['basket'] = $basket;
        $mass_basket_json = json_encode($basket);
        setcookie('basket', $mass_basket_json, TIME_COOKIE_BASKET, '/');
    }
}
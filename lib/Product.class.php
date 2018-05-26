<?php

class Product
{
    public static function TopProduct($quantity = 4, $sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods order by view $sort limit $quantity;");
    }

    public static function NewProduct($quantity = 4, $sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods order by date $sort limit $quantity;");
    }

    public static function AllTopProduct($sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods order by view $sort;");
    }


    /*
    public static function StatusProduct($quantity = 9, $status = 2, $sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods where status = '$status' order by view $sort limit $quantity;");
    }

    public static function AllStatusProduct($status = 2, $sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods where status = '$status' order by view $sort;");
    }
*/

    public static function PageProduct($quantity = 9, $page = 5, $sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods where id_pages = '$page' order by view $sort limit $quantity;");
    }

    public static function CategoryProduct($quantity = 9, $category = 1, $sort = 'desc')
    {
        return db::getInstance()->Select("select * from goods where id_category = '$category' order by view $sort limit $quantity;");
    }

    public static function CategoryList($page = 9)
    {
        $result['category_name'] = db::getInstance()->Select("select * from categories where id_pages = '$page';");
        $result['page_name'] = db::getInstance()->Select("select * from pages where id = '$page';");
        return $result;
    }
}
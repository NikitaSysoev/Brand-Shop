// JavaScript Document

function register() {
    var login = encodeURI(document.getElementById('login').value);
    var password = encodeURI(document.getElementById('pass').value);
    var rememberme = encodeURI(document.getElementById('rememberme').checked);
    var rememberme2 = encodeURI(document.getElementById('rememberme').checked);
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data: {
            method: 'ajax',
            PageAjax: 'register',
            var3: rememberme2,
            login: login,
            pass: password,
            rememberme: rememberme
        },
        success: function (response) {
            $('#autorize').html(response);
        },
        dataType: "json"
    });

};

function register2() {
    var login2 = encodeURI(document.getElementById('email').value);
    var password2 = encodeURI(document.getElementById('password').value);
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data: {
            method: 'ajax',
            PageAjax: 'register2',
            login2: login2,
            password2: password2
        },
        success: function (response) {
            $('#checkout').html(response);
        },
        dataType: "json"
    });
};

function view_all() {
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data: {
            method: 'ajax',
            PageAjax: 'view_all'
        },
        success: function (response) {
            $('#featured_parent').html(response);
        },
        dataType: "json"
    });
};


function add_basket_one(var3) {
    var var4 = $(var3).attr("data-product-guid");
    var pricegood = parseInt($(var3).find('.fetured_cont .fetured_price').text().replace("$", ""));
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data: {
            method: 'ajax',
            PageAjax: 'add_basket_one',
            uid: var4,
            count_goods: 1,
            pricegood: pricegood
        },
        dataType: "json"
    });
};

function add_basket(var3) {
    var var4 = $(var3).attr("data-product-guid");
    var count = parseInt(document.getElementById('eq').value);
    var pricegood = parseInt($('#count').text().replace("$", ""));
    //var totalpricegood = pricegood * count;
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data: {
            method: 'ajax',
            PageAjax: 'add_basket',
            uid: var4,
            count_goods: count,
            pricegood: pricegood
        },
        success: function () {

        },
        error: function () {
            console.log('error');
        },
        dataType: "json"
    });
};


function clear_basket_good(var5) {
    var var6 = $(var5).attr("data-product-guid");
    var del = parseInt($(var5).find('.cart-hide-text p .units').html());
    var delprice = parseInt($(var5).find('.cart-hide-text p .delete-price').html());
    var sumpricegood = del * delprice;
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data:
            {
                method: 'ajax',
                PageAjax: 'clear_basket_good',
                uid: var6,
                del_good: del,
                delprice: delprice,
                sumpricegood: sumpricegood
            },
        success: function () {
            console.log('sucess');
        },
        dataType: "json"
    });
}

function clear_basket_cart(var5) {
    var var6 = $(var5).attr("data-product-guid");
    var del = $(var5).find('.quantity input').attr("value");
    var delprice = parseInt($(var5).find('.unit_price').text());
    var subtotal = del * delprice;
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data:
            {
                method: 'ajax',
                PageAjax: 'clear_basket_cart',
                uid: var6,
                dele_good: del,
                delprice: delprice,
                subtotal: subtotal
            },
        success: function () {
            console.log('sucess');
        },
        dataType: "json"
    });
}

function clear_all() {
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data:
            {
                method: 'ajax',
                PageAjax: 'clear_all'
            },
        dataType: "json"
    });
}

function subscribe() {
    var mail = $('#email_subscribe').val();
    $.ajax({
        type: 'POST',
        url: '/index.php',
        data:
            {
                method: 'ajax',
                PageAjax: 'subscribe',
                mail: mail
            },
        success: function () {
            $('#dispatch').css("display", "block");
        },
        dataType: "json"
    });
}

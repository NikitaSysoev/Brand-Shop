{% include 'bread_crumbs.html' %}
<div class="slider_single">
    <nav id="good_image">
        <a href="#" class="left_nav" id="prev">
        <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
        <img src="{{domain}}{{content_data.product.0.foto}}" alt="{{ content_data.product.0.id_good }}.png">
        <a href="#" class="right_nav" id="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
    </nav>
</div>
<div class="container">
    <section class="women_collection">
        <div class="collection_content" id="item_{{ content_data.product.0.id_good }}"
             data-product-guid="{{ content_data.product.0.ID_UUID }}">
            <h3>women collection</h3>
            <div class="style_border">
                <div class="style_border_red"></div>
            </div>
            <h4>{{ content_data.product.0.name }}</h4>
            <div class="rating" id="rating">
                {{ content_data.product.0.rating }}
            </div>
            <p class="collect_p">
                {{ content_data.product.0.short_description }}
            </p>
            <div class="collect_info">
                <p>material: <span>cotton</span></p>
                <p>designer: <span>binburhan</span></p>
            </div>
            <p id="count" class="price">${{ content_data.product.0.price }}</p>
            <div class="collect_border"></div>
            <form class="choose_to_cart">
                <div class="form form-1">
                    <div class="choose_color">choose color</div>
                    <div class="option">
                        <div class="option_click">
                            <div class="color_option"></div>
                            <p>red</p>
                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </div>
                        <div class="option_hidden" id="choose-color">
                            <div class="option">
                                <div class="color_option"></div>
                                <p>red</p>
                            </div>
                            <div class="option">
                                <div class="color_option blue"></div>
                                <p>blue</p>
                            </div>
                            <div class="option">
                                <div class="color_option yellow"></div>
                                <p>yellow</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form form-2">
                    <div class="choose_color">CHOOSE SIZE</div>
                    <div class="option option2">
                        <div class="option_click">
                            <p>XXS</p>
                            <i class="fa fa-angle-down" aria-hidden="true"></i>
                        </div>
                        <div class="option_hidden" id="choose-size">
                            <div class="option">XXS</div>
                            <div class="option">XS</div>
                            <div class="option">S</div>
                            <div class="option">M</div>
                            <div class="option">L</div>
                            <div class="option">XL</div>
                            <div class="option">XXL</div>
                        </div>
                    </div>
                </div>
                <div class="form form-3">
                    <div class="choose_color">quantity</div>
                    <input class="option option3" id="eq" type="number" name="quantity" value="1" min="1" max="20"
                           step="1">
                </div>
                <div class="form form-4">
                    <button class="cart-button" onclick="add_basket('#item_{{content_data.product.0.id_good}}')">Add to
                        Cart
                        <i class="sprite sprite-forma-1-copy"></i>
                    </button>
                </div>
            </form>
        </div>
    </section>
</div>
<div class="container">
    <section class="woman_goods">
        <h2 class="women_text_1">you may like also </h2>
        <div class="women_parent" id="featured_parent">
            {% include 'products.html' %}
        </div>
    </section>
</div>
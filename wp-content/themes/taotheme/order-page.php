<?php
/*
Template Name: Индивидуальный Заказ
*/

get_header(); ?>

        <!-- <<<<<<<<<<<<<<<<<<<< Breadcumb Area Start <<<<<<<<<<<<<<<<<<<< -->
        <div class="breadcumb_area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <ol class="breadcrumb d-flex align-items-center">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item"><a href="#">Dresses</a></li>
                            <li class="breadcrumb-item active">Long Dress</li>
                        </ol>
                        <!-- btn -->
                        <a href="#" class="backToHome d-block"><i class="fa fa-angle-double-left"></i> Back to Category</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- <<<<<<<<<<<<<<<<<<<< Breadcumb Area End <<<<<<<<<<<<<<<<<<<< -->

        <!-- ****** Cart Area Start ****** -->
        <div class="cart_area section_padding_100 clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <form class="cart-table clearfix">
                            <div class="cart-table__top">
                                <input type="text" name="name" class="cart-table__input" placeholder="Имя">
                                <input type="email" name="email" class="cart-table__input" placeholder="email">
                                <input type="text" name="phone" class="cart-table__input" placeholder="телефон">
                            </div>
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>Фото</th>
                                        <th>Ссылка на сайте таобао</th>
                                        <th>Цена на сайте</th>
                                        <th>Колличество</th>
                                        <th>Комментарий</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="order-row">
                                        <td class="cart_product_img d-flex align-items-center">
                                          
                                            <a href="#"><img src="" alt="Product"></a>
                                           
                                        </td>
                                        <td class="cart-table_td">
                                        
                                            <input type="url" name="link" class="cart-table__input input_name">
                                        </td>
                                        <td class="price cart-table_td"><input type="text" name="price" class="cart-table__input input_name"></td>
                                        <td class="qty">
                                            <div class="quantity">
                                                <span class="qty-minus""><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                <input type="number" class="qty-text input_name" id="qty" step="1" min="1" max="99" name="quantity" value="1">
                                                <span class="qty-plus"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                            </div>
                                        </td>
                                        <td ><textarea name="comment" id="" class="cart-table__input input_name"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td class="cart_product_img d-flex align-items-center">
                                          
                                            <a href="#"><img src="/wp-content/themes/taotheme/assets/img/product-img/product-9.jpg" alt="Product"></a>
                                           
                                        </td>
                                        <td class="cart-table_td">
                                        
                                            <input type="url" name="link" class="cart-table__input">
                                        </td>
                                        <td class="price cart-table_td"><input type="text" name="price" class="cart-table__input" placeholder="в юанях"></td>
                                        <td class="qty">
                                            <div class="quantity">
                                                <span class="qty-minus"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                <input type="number" class="qty-text" id="qty" step="1" min="1" max="99" name="quantity" value="1">
                                                <span class="qty-plus"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                            </div>
                                        </td>
                                        <td><textarea name="comment" id="" class="cart-table__input"></textarea></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="cart-table__buttons">
                                <button type="button" id="add-row" class="cart-table__add">Добавить поле для закзаза</button>
                                <button type="submit" class="cart-table__button">Заказать</button>
                            </div>
                        </form>
<script>

    jQuery( document ).ready(function($) {

        $( "#add-row" ).on( "click", function() {

            $(".order-row").clone().appendTo(".table tbody").removeClass("order-row");

            $( ".input_name" ).each(function(index) {

                var atr =$(this).attr('name');
                
                var atr =$(this).attr('name', atr + index);
});




        });

    });

</script>
<!-- 
                        <div class="cart-footer d-flex mt-30">
                            <div class="back-to-shop w-50">
                                <a href="shop-grid-left-sidebar.html">Continue shooping</a>
                            </div>
                            <div class="update-checkout w-50 text-right">
                                <a href="#">clear cart</a>
                                <a href="#">Update cart</a>
                            </div>
                        </div> -->

                    </div>
                </div>

               <!--  <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="coupon-code-area mt-70">
                            <div class="cart-page-heading">
                                <h5>Cupon code</h5>
                                <p>Enter your cupone code</p>
                            </div>
                            <form action="#">
                                <input type="search" name="search" placeholder="#569ab15">
                                <button type="submit">Apply</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="shipping-method-area mt-70">
                            <div class="cart-page-heading">
                                <h5>Shipping method</h5>
                                <p>Select the one you want</p>
                            </div>

                            <div class="custom-control custom-radio mb-30">
                                <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                                <label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio1"><span>Next day delivery</span><span>$4.99</span></label>
                            </div>

                            <div class="custom-control custom-radio mb-30">
                                <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                                <label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio2"><span>Standard delivery</span><span>$1.99</span></label>
                            </div>

                            <div class="custom-control custom-radio">
                                <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
                                <label class="custom-control-label d-flex align-items-center justify-content-between" for="customRadio3"><span>Personal Pickup</span><span>Free</span></label>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="cart-total-area mt-70">
                            <div class="cart-page-heading">
                                <h5>Cart total</h5>
                                <p>Final info</p>
                            </div>

                            <ul class="cart-total-chart">
                                <li><span>Subtotal</span> <span>$59.90</span></li>
                                <li><span>Shipping</span> <span>Free</span></li>
                                <li><span><strong>Total</strong></span> <span><strong>$59.90</strong></span></li>
                            </ul>
                            <a href="checkout.html" class="btn karl-checkout-btn">Proceed to checkout</a>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
        <!-- ****** Cart Area End ****** -->


        <section class="you_may_like_area clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2>Новые товары СП</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="you_make_like_slider owl-carousel">
                        	<?php
                        		// имя и ID категории поста
							foreach((get_the_category()) as $category) {
							  $postcat= $category->cat_ID;
							  $catname =$category->cat_name;

							}

                        	$categories = get_the_category( $post->ID );

                        		// параметры по умолчанию
								$args = array(
									'numberposts' => 5,
									'category'    => $postcat,
									'orderby'     => 'date',
									'order'       => 'DESC',
									'include'     => array(),
									'exclude'     => array(),
									'meta_key'    => '',
									'meta_value'  =>'',
									'post_type'   => 'product',
									'suppress_filters' => true, // подавление работы фильтров изменения SQL запроса
								);

								$posts = get_posts( $args );

								foreach($posts as $post){ setup_postdata($post); ?>
     						<!-- Single gallery Item -->
                            <div class="single_gallery_item">
                                <!-- Product Image -->
                                <div class="product-img">
                                	<?php

                                        $rows = get_field('product_img-field' ); // get all the rows

                                        $first_row = $rows[0]; // get the first row
                                        $first_row_image = $first_row['product_img' ]; // get the sub field value 

                                        ?>
                                        <img src="<?php echo $first_row_image; ?>" />
                                    
                                    <div class="product-quicview">

                                        <a href="<?php echo get_permalink(); ?>" ><i class="ti-plus"></i></a>
                                    </div>
                                </div>
                                <!-- Product Description -->
                                <div class="product-description">
                                    <h4 class="product-price"><?php the_field('prod_price'); ?> грн.</h4>
                                    <p><?php the_title(); ?></p>
                                   
                                </div>
                            </div>
							<?php }

							wp_reset_postdata(); // сброс                	 ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

<script type="text/javascript" src="http://wp-auth/wp-content/themes/taotheme/assets/js/form.js"></script>



<?php get_footer(); ?>


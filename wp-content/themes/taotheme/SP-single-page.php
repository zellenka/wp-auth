<?php
/*
Template Name: СП
Template Post Type: product
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
<?php if (have_posts()): while (have_posts()): the_post(); ?>
        <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area Start >>>>>>>>>>>>>>>>>>>>>>>>> -->
        <section class="single_product_details_area section_padding_0_100">
            <div class="container">
                <div class="row">

                    <div class="col-12 col-md-6">
                        <div class="single_product_thumb">
                            <div id="product_details_slider" class="carousel slide" data-ride="carousel">
							
                                <ol class="carousel-indicators">
                                	<?php

										// check if the repeater field has rows of data
										if( have_rows('product_img-field') ):

										 	// loop through the rows of data
										    while ( have_rows('product_img-field') ) : the_row(); ?>
                                    <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(<?php echo the_sub_field('product_img'); ?>);">
                                    </li>
									<?php                                        endwhile;

									else :

									    // no rows found

									endif;

									?>
                                 
                                </ol>

                                <div class="carousel-inner">
									<?php

										// check if the repeater field has rows of data
										if( have_rows('product_img-field') ):

										 	// loop through the rows of data
										    while ( have_rows('product_img-field') ) : the_row(); ?>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="<?php echo the_sub_field('product_img'); ?>">
                                        <img class="d-block w-100" src="<?php echo the_sub_field('product_img'); ?>" alt="First slide">
                                    </a>
                                    </div>
									<?php                                        endwhile;

									else :

									    // no rows found

									endif;

									?>
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-6">
                        <div class="single_product_desc">

                            <h4 class="title"><?php the_title(); ?></h4>

                            <h4 class="price"><?php the_field('prod_price'); ?> грн.</h4>

                            <!-- <p class="available">Available: <span class="text-muted">In Stock</span></p> -->

                            <div class="single_product_ratings mb-15">
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star" aria-hidden="true"></i>
                                <i class="fa fa-star-o" aria-hidden="true"></i>
                            </div>

                            <div class="widget size mb-50">
                                <h6 class="widget-title">Доступные размеры</h6>
                                <div class="widget-desc">
                                    <ul>
                                    	<?php

										// check if the repeater field has rows of data
										if( have_rows('size_field') ):

										 	// loop through the rows of data
										    while ( have_rows('size_field') ) : the_row(); ?>
                                        <li><a href="#"><?php the_sub_field('size_number'); ?></a></li>
                                        <?php                                        endwhile;

									else :

									    // no rows found

									endif;

									?>
                                     
                                    </ul>
                                </div>
                            </div>
                            <div class="widget size mb-50">
                                <h6 class="widget-title">Доступные цвета</h6>
                                <div class="widget-desc">
                                    <ul>
                                    	<?php

										// check if the repeater field has rows of data
										if( have_rows('colors_field') ):

										 	// loop through the rows of data
										    while ( have_rows('colors_field') ) : the_row(); ?>
                                        <li><a href="#" style="background-color:<?php the_sub_field('color_product'); ?>"></a></li>
                                        <?php                                        endwhile;

									else :

									    // no rows found

									endif;

									?>
                                     
                                    </ul>
                                </div>
                            </div>
                             
                                <button type="button" data-toggle="modal" data-target="#exampleModal" class="btn cart-submit d-block">Купить в один клик</button>
                           
                            <div id="accordion" role="tablist">
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingOne">
                                        <h6 class="mb-0">
                                            <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Доп информация</a>
                                        </h6>
                                    </div>

                                    <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te mpus. Ut consectetur lacus.</p>
                                            <p>Approx length 66cm/26" (Based on a UK size 8 sample) Mixed fibres</p>
                                            <p>The Model wears a UK size 8/ EU size 36/ US size 4 and her height is 5'8"</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingTwo">
                                        <h6 class="mb-0">
                                            <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Еще информация</a>
                                        </h6>
                                    </div>
                                    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quis in veritatis officia inventore, tempore provident dignissimos nemo, nulla quaerat. Quibusdam non, eos, voluptatem reprehenderit hic nam! Laboriosam, sapiente! Praesentium.</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia magnam laborum eaque.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" role="tab" id="headingThree">
                                        <h6 class="mb-0">
                                            <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Тоже информация</a>
                                        </h6>
                                    </div>
                                    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                        <div class="card-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse quo sint repudiandae suscipit ab soluta delectus voluptate, vero vitae, tempore maxime rerum iste dolorem mollitia perferendis distinctio. Quibusdam laboriosam rerum distinctio. Repudiandae fugit odit, sequi id!</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae qui maxime consequatur laudantium temporibus ad et. A optio inventore deleniti ipsa.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- <<<<<<<<<<<<<<<<<<<< Single Product Details Area End >>>>>>>>>>>>>>>>>>>>>>>>> -->
<?php endwhile; endif; ?>


        <section class="you_may_like_area clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_heading text-center">
                            <h2>Таже категория</h2>
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

		<?php if (have_posts()): while (have_posts()): the_post(); ?>
		<?php 


			// Previous/next post navigation.
			the_post_navigation( array(
				'next_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Next', 'twentyfifteen' ) . '</span> ' .
					'<span class="screen-reader-text">' . __( 'Next post:', 'twentyfifteen' ) . '</span> ' .
					'<span class="post-title">%title</span>',
				'prev_text' => '<span class="meta-nav" aria-hidden="true">' . __( 'Previous', 'twentyfifteen' ) . '</span> ' .
					'<span class="screen-reader-text">' . __( 'Previous post:', 'twentyfifteen' ) . '</span> ' .
					'<span class="post-title">%title</span>',
			) );

		// End the loop.
		endwhile; endif;
		?>



<?php get_footer(); ?>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <!-- Hidden Required Fields -->
  <input type="hidden" name="project_name" value="Site Name">
  <input type="hidden" name="admin_email" value="admin@mail.com">
  <input type="hidden" name="form_subject" value="Form Subject">
  <!-- END Hidden Required Fields -->
 
  <p><?php the_title(); ?></p>
  <p><select>
  	<?php

		// check if the repeater field has rows of data
		if( have_rows('size_field') ):

		 	// loop through the rows of data
		    while ( have_rows('size_field') ) : the_row(); ?>
        <option><?php the_sub_field('size_number'); ?></option>
        <?php                                        endwhile;

		else :

		    // no rows found

		endif;

	?>
	</select></p>
	  <p><select>
  	<?php

		// check if the repeater field has rows of data
		if( have_rows('colors_field') ):

		 	// loop through the rows of data
		    while ( have_rows('colors_field') ) : the_row(); ?>
        <option style="background-color:<?php the_sub_field('color_product'); ?>" ></option>
        <?php                                        endwhile;

		else :

		    // no rows found

		endif;

	?>
	</select></p>
 <p> <input type="text" name="E-mail" placeholder="Ваш почта" required></p>
 <p><textarea name="" cols="30" rows="10"></textarea></p>


  <button>Заказать</button>
      </div>

    </div>
  </div>
</div>
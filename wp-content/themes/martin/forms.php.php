<?php /* Template Name: Forms  */ ?>

<?php get_header(); ?>
<section class="formsSliderSec py-md-5 py-3">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-8 m-auto">
                 <div>
                    <h1 class="headingThree gryTxt">REQUEST ESTIMATE</h1>
                </div>
                <div class="row">
                    <div class="col-lg-6 py-5 mx-auto">
                        <div class="formSlider cstmSliderBtn">
                            <div class="owl-carousel owl-theme">
                                <div class="item">
                                    <div class="formImg">
                                        <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/FORMS.png' ); ?>" alt="">
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="formImg">
                                        <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/FORMS.png' ); ?>" alt="">
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="formImg">
                                        <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/FORMS.png' ); ?>" alt="">
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="formImg">
                                        <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/FORMS.png' ); ?>" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-right">
                    <a href="javascript:(void)" class="scndryClr">DOWNLOAD ALL</a>
                    <button class="ml-4 btnScndry">DOWNLOAD</button>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="contactFrom pb-5">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 m-auto">
                        <div class="text-center my-5">
                            <h2 class="headingThree whteClr">HOW CAN WE HELP?</h2>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="cstField"><input type="text" placeholder="Name *"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="cstField"><input type="email" placeholder="Email *"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="cstField"><input type="text" placeholder="Phone"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="cstField">
                                    <select name="" id="">
                                        <option value="">Subject *</option>
                                        <option value="Subject 1">Subject 1</option>
                                        <option value="Subject 2">Subject 2</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="cstField">
                                    <textarea name="" id="" cols="30" rows="5" placeholder="Question or Message *">Question or Message *</textarea>
                                </div>
                            </div>
                            
                            <div class="col-lg-12 text-center">
                                <button class="drkBtn">SUBMIT</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<?php get_footer(); ?>
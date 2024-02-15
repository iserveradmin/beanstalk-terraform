<?php /* Template Name: Contact  */ ?>

<?php get_header(); ?>
        <section class="faqSeC my-5">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 m-auto">
                        <div class="row">
                            <div class="col-lg-4">
                                <div>
                                    <h1 class="headingThree gryTxt mb-4">
                                        CONTACT
                                    </h1>
                                </div>
                                <p class="pb-4">
                                    Address: <br>20803 DEARBORN ST <br>CHATSWORTH, CA 91311
                                </p>
                                <p class="pb-4">Phone: <br> 818 - 761 - 2822 <br>818 - 761 - 2121 <br>Toll Free: 866 - LABEL 55</p>
                                <p class="pb-4">Fax: <br> 818 - 761 - 7507</p>
                                <p class="pb-4">Email: <br> Order@MartinLabels.com</p>
                            </div>
                            <div class="col-lg-8">
                                <div class="mapImg">
                                    <img src="<?php echo esc_url( get_template_directory_uri() . '/assets/images/map.png' ); ?>" alt="">
                                </div>
                            </div>
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
                            <h2 class="headingThree whteClr">SEND US A MESSENGER</h2>
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
<?php /* Template Name: Art Work  */ ?>

<?php get_header(); ?>
        <section class="tstmnalSec py-md-5 py-3">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 m-auto">
                        <div>
                            <h1 class="headingThree gryTxt">UPLOAD ARTWORK</h1>
                        </div>
                        <div class="tstmnalForm py-md-5 py-3">
                            <div class="prmryFrom">
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="pfField pb-5">

                                                <input class="" id="uplodArtWork" value="" hidden type="file"/>
                                                <label for="uplodArtWork" class="grayBtn whteClr">UPLOAD FILE</label>
                                            </div>
                                            <div class="uploadedFiles mb-4">
                                                <!-- <div class="upldFilCrd">
                                                    <div class="ufcImg">
                                                        <img src="" alt="">
                                                    </div>
                                                    <div class="ufcFotr">
                                                        <span class="ufcName">File Name</span>
                                                        <button class="rmveBtn">X Remove</button>
                                                    </div>
                                                </div> -->
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="pfField">
                                                <input type="text" placeholder="Name *">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="pfField">
                                                <input type="text" placeholder="Company Name *">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="pfField">
                                                <input type="text" placeholder="Email *">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="pfField">
                                                <input type="text" placeholder="Phone *">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="pfField">
                                                <textarea name="" id="" cols="30" rows="5">Comments</textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 mb-5 text-center">
                                            <p class="dslmrTxt mb-2">* Discaimer stating how their files will be used based on your company process.</p>
                                            <div class="pfField d-flex align-items-center justify-content-center">
                                                <input type="radio" id="agre">
                                                <label for="agre" class="drkClr">I agree the term of Use</label>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-12 text-center">
                                            <button class="btnScndry">SUBMIT</button>
                                            
                                        </div>
                                    </div>
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
<?= $header ?> 
<?= $navigation ?> 
<body style="background-image: url('../uploads/site/c2.jpg');background-repeat:;background-size: 100%"> 
    <div class="row"> 
        <div class="col s12 m4 offset-m4"><?= br(2) ?>
            <?= form_open('register') ?>
                <div class="card hoverable">
                    <div class="padding">
                       <br><h4><i class="fa fa-pencil"></i> Sign-up</h4><br> 
                        <div id="f1">
                            <div class="row"> 
                                <div class="input-field ">
                                    <input name="fname" id="fullname" type="text" class="validate" required>
                                    <label for="fullname">*Fullname</label>
                                </div>
                            </div>
                            <div class="row"> 
                                <div class="input-field ">
                                    <input name="position" id="position" type="text" class="validate">
                                    <label for="position">Position<em> (If in business)</em></label>
                                </div>
                            </div>
                            <div class="row"> 
                                <div class="input-field ">
                                    <input name="mobile" id="mobile" type="text" class="validate">
                                    <label for="mobile">Mobile Number</label>
                                </div>
                            </div> 
                            <a id="btn_f1" class="btn">
                                Next <i class="fa fa-angle-right"></i>
                            </a>
                        </div>

                        <div id="f2">
                            <div class="row"> 
                                <div class="input-field col s12 m12">
                                    <input name="email" id="email" type="email" class="validate" required>
                                    <label data-error="wrong" data-success="right" for="email">*Email Address</label>
                                </div>
                            </div>
                            <div class="row"> 
                                <div class="input-field col s12 m12">
                                    <textarea name="home" id="home_address" type="text" 
                                        class="materialize-textarea" required></textarea>
                                    <label for="home_address">*Complete Home Address</label>
                                </div>
                            </div>
                            <a id="btn_f2_prev" class="btn"><i class="fa fa-angle-left"></i> Prev </a>
                            <a id="btn_f2" class="btn">Next <i class="fa fa-angle-right"></i></a>
                        </div>

                        <div id="f3">
                            <div class="row"> 
                                <div class="input-field col s12 m12"> 
                                    <input name="username" id="username" type="text" class="validate" required>
                                    <label for="username">*Username</label>
                                </div>
                            </div>

                            <div class="row"> 
                                <div class="input-field col s12 m12"> 
                                    <input name="password" id="password" type="password" class="validate" required>
                                    <label for="password">*Password</label>
                                </div>
                            </div>

                            <div class="row"> 
                                <div class="input-field col s12 m12"> 
                                    <input id="re-password" type="password" class="validate" required>
                                    <label for="re-password">*Re-enter Password</label>
                                </div>
                            </div>  

                            <a id="btn_f3_prev" class="btn"><i class="fa fa-angle-left"></i> Prev</a>
                            <button id="btn_submit_register" class="btn">Register <i class="fa fa-check"></i></button>
                            <p id="password_error">password not matched!</p>
                        </div> 
                       <?= br(2) ?>
                    </div>
                </div>
                <?= br(5) ?>
            <?= form_close() ?>
        </div>
    </div>
</body>
 <?= $footer ?> 
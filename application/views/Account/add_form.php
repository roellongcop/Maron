
<script>
    function previewImage() {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("image").files[0]);

        oFReader.onload = function(oFREvent) {
            document.getElementById("image-preview").src = oFREvent.target.result;
        };
    };
</script>

<?= $header ?>
<?= $sidenav ?>

<br><br>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Add User Account</h1>
    <ol class="breadcrumb">
        <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
        <li><a href=""><i class="fa fa-tasks"></i> UserAccounts</a></li>
        <li class="active"><a href="">Add User Account</a></li>
    </ol><hr>
</section> 
 

 
<?= form_open_multipart('account/save');?>
    <div class="col-md-5">
        <p><br><b>FullName</b></p>
        <input type="text" name="fullName" class="form-control" required>
        <br><p><b>Address</b></p> 
        <textarea style="height: 160px;" class="form-control" name="address" required></textarea>
    </div>

    <div class="col-md-3">
        <p><br><b>Select Gender</b></p> 
        <select class="form-control" name="gender"> 
            <option>Male</option>
            <option>Female</option>
        </select> 

        <p><br><b>UserType</b></p> 
        <select class="form-control" name="userType"> 
            <option>Administrator</option>
            <option>Engineer</option>
        </select>   
    </div>


    <div class="col-md-4">
        <p><br><b>Image</b></p> 
        <center>
            <img src="<?= base_url(). 'uploads/templates/male.png' ?>" style="width: 150px;height: 143px;" 
            id="image-preview" class="w3-circle image-responsive"><br>
            <input style="width: 35%"  type="file" name="image" id="image" title ="Image" onchange="previewImage()">
        </center>
    </div>
       
    <div class="col-md-4"> 
        <p><br><b>Email Address</b></p> 
        <input type="email" class="form-control" name="email">
    </div>
  
    <div class="col-md-4"> 
        <p><br><b>Username</b></p> 
        <input type="text" class="form-control" name="username" required>
    </div>

    <div class="col-md-4"> 
        <p><br><b>Password</b></p> 
        <input type="password" class="form-control" name="password1" required><br> 
    </div>

    <div class="col-md-4">
        <br><p><b>Re-type Password</b></p> 
        <input type="password" class="form-control" name="password2" required><br>
    </div>


     <div class="col-md-4"></div>
       
    <div class="col-md-4"> 
        <center>
            <br><br>
            <button name="saveUserAccount" class="btn btn-<?= $this->session->button ?>"> 
                <i class='fa fa-check-circle'></i>  SaveThis
            </button>
            <a href="<?= site_url('account/get/'.$this->session->id)?>" class="btn btn-danger" data-dismiss="modal"> <i class="fa fa-close"></i>  Cancel
            </a> 
            <br><br><br>
        </center>
    </div>
<?= form_close(); ?>
<?= $footer ?>

<?= $header ?> 
<?= $navigation ?>  
<div id="padding" >  
	<div class="row">   
        <div class="col s12 m6">
            <h4 class="grey-color">
            	<div class="btn btn-floating"><i class="fa fa-bell"></i></div> Notifications
            </h4> 
        </div>
        <div class="col s12 m6"><br>
            <input type="text" id="search-notif" placeholder="Search Here">
        </div> 
   	</div>
<hr>
	<div class="row">
        <div id="found-notif">
           	<?php foreach ($notification as $n): ?>
           		<div class="col s12 m6">
                    <blockquote>
                        <!-- <span class="new badge"></span> -->
                        <div class="chip grey">
                            <img src="<?= base_url() . $n['imagePath'] ?>" alt="Image">
                            <?= $n['fullName'] ?>
                        </div> 
    		       		<?= $n['date_occur'] ?><br>
    		       		<?= $n['description'] ?><br>
    		       		<a href="<?= $n['link'] ?>" ><ins>View Details</ins></a>
    		       	</blockquote>
           		</div> 
           	<?php endforeach ?> 
        </div>
	</div>
</div>   
 <?= $footer ?> 
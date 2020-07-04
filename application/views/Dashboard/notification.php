<!-- PROJECT_NOTIFICATION -->
<div class="modal fade" id="notificationProject" role="dialog" >
    <div class="modal-dialog modal-lg"  >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Project Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'>  
                    <?php foreach ($notif_project as $project) : ?>
                        <li class='list-group-item' > 
                            <img src="<?= base_url() . $project['userImage'] ?>" class="w3-circle dash-img">  
                            <a class="link" href="<?= site_url($project['link']) ?>"> 
                                <?= $project['description']; ?>
                                <p class="dateList"><?= $project['dateOccur']; ?></p>
                            </a> 
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>  
            <div class="modal-footer">   
                <button id="btn-project" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button> 
            </div>
        </div>
    </div>
</div>

<!-- EXPENSES_NOTIFICATION -->
<div class="modal fade" id="notificationExpenses" role="dialog" >
    <div class="modal-dialog modal-lg"  >
        <div class="modal-content paper" >
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Expenses Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_expenses as $expense) : ?>
                        <li class='list-group-item notifList' >
                            <img src="<?= base_url() . $expense['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($expense['link']) ?>">
                                <?= $expense['description']; ?>
                                <p class="dateList"><?= $expense['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>  
            <div class="modal-footer">  
                <button id="btn-expense" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button> 
            </div>
        </div>
    </div>
</div>
 
 
<!-- INVENTORY_NOTIFICATION -->
<div class="modal fade" id="notificationInventory" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Inventory Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_inventory as $inventory) : ?>
                        <li class='list-group-item notifList'>
                            <img src="<?= base_url() . $inventory['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($inventory['link']) ?>">
                                <?= $inventory['description']; ?>
                                <p class="dateList"><?= $inventory['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>  
            <div class="modal-footer"> 
                <button id="btn-inventory" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button> 
            </div>
        </div>
    </div>
</div>

<!-- ACTIVITY_LOGS_NOTIFICATION -->
<div class="modal fade" id="notificationActivitylogs" role="dialog"  >
    <div class="modal-dialog modal-lg" >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Activity Logs Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'>  
                    <?php foreach ($notif_activitylogs as $log) : ?>
                        <li class='list-group-item notifList' >
                            <img src="<?= base_url() . $log['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($log['link']) ?>">
                                <?= $log['description']; ?>
                                <p class="dateList"><?= $log['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div> 
            <div class="modal-footer">  
                <button id="btn-activitylog" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button>   
            </div>
        </div>
    </div>
</div>

<!-- USERACCOUNT_NOTIFICATION -->
<div class="modal fade" id="notificationUseraccount" role="dialog" >
    <div class="modal-dialog modal-lg" >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">User Accounts Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_useraccounts as $user) : ?>
                        <li class='list-group-item notifList'>
                            <img src="<?= base_url() . $user['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($user['link']) ?>">
                                <?= $user['description']; ?>
                                <p class="dateList"><?= $user['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div> 
            <div class="modal-footer">  
                <button id="btn-useraccount" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button> 
            </div>
        </div>
    </div>
</div>




<!-- COMPANYPROFILE_NOTIFICATION -->
<div class="modal fade" id="notificationProfile" role="dialog" >
    <div class="modal-dialog modal-lg" >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Company Profile Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_profile as $profile) : ?>
                        <li class='list-group-item notifList'>
                            <img src="<?= base_url() . $profile['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($profile['link']) ?>">
                                <?= $profile['description']; ?>
                                <p class="dateList"><?= $profile['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div> 
            <div class="modal-footer">  
                <button id="btn-profile" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button> 
            </div>
        </div>
    </div>
</div>




<!-- COMPANYPROFILE_NOTIFICATION -->
<div class="modal fade" id="notificationClients" role="dialog" >
    <div class="modal-dialog modal-lg" >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Clients Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_client as $client) : ?>
                        <li class='list-group-item notifList'>
                            <img src="<?= base_url() . $client['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($client['link']) ?>">
                                <?= $client['description']; ?>
                                <p class="dateList"><?= $client['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div> 
            <div class="modal-footer">  
                <button id="btn-client" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button> 
            </div>
        </div>
    </div>
</div>



<!-- Request -->
<div class="modal fade" id="notificationRequests" role="dialog" >
   <div class="modal-dialog modal-lg" >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Request Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_request as $r) : ?>
                        <li class='list-group-item notifList'>
                            <img src="<?= base_url() . $r['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($r['link']) ?>">
                                <?= $r['description']; ?>
                                <p class="dateList"><?= $r['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div> 
            <div class="modal-footer">  
                <button id="btn-request" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button>  
            </div>
        </div>
   </div>
</div>

<div class="modal fade" id="notificationQuotations" role="dialog" >
   <div class="modal-dialog modal-lg" >
        <div class="modal-content paper">
            <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:white;"; >
                <button data-dismiss="modal" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Quotation Updates</h4>
            </div>
            <div class="modal-body">  
                <ul class='list-group'> 
                    <?php foreach ($notif_quotation as $q) : ?>
                        <li class='list-group-item notifList'>
                            <img src="<?= base_url() . $q['userImage'] ?>" class="w3-circle dash-img">
                            <a class="link" href="<?= site_url($q['link']) ?>">
                                <?= $q['description']; ?>
                                <p class="dateList"><?= $q['dateOccur']; ?></p>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div> 
            <div class="modal-footer">  
                <button id="btn-quotation" data-dismiss="modal" class="btn btn-success btn-sm">
                    <i class="fa fa-book"></i> 
                    Mark as Read
                </button>  
            </div>
        </div>
   </div>
</div>
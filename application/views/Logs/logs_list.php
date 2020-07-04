<?= $header ?>
<?= $sidenav ?>
<br><br>
<section class="content-header">
    <?php if ($who != "All") : ?>
        <?php foreach ($user_info as $user):?>
            <h1>
                <img src="<?= base_url() . $user['imagePath'] ?>"  class="w3-circle " 
                style="width: 50px;height: 50px;"> 
                <?= $user['fullName'] ?>'s Activity Logs
            </h1> 
            <p><?= $user['email'] ?></p>
            <p> <?= $user['Address'] ?></p> 
        <?php endforeach; ?>
    <?php else : ?>
        <h1><span><i class="fa fa-group"></i></span> All Activity Logs</h1><hr>
    <?php endif; ?>
       <ol class="breadcrumb">
            <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href=""><i class="fa fa-tasks"></i> ActivityLogs</a></li>
       </ol>
</section>  
<br><br> 
<div class="panel panel-default container-fluid"><br>
    <table class='table table-bordered responsive-table example'  >
    <thead>
        <tr>
            <?php if ($who == "All") :  ?><th>User</th><?php  endif; ?>
            <th>Activity Perform</th>
            <th>Date</th>
            <th>Time</th>
        </tr>
        </thead>
        <tbody> 
            <?php foreach ($logs_list as $log) : ?>
                <tr>
                    <?php  $id = $log['id']; ?> 
                    <?php if ($who == "All") : ?> 
                        <td><img class="log_img"  src="<?= base_url() . $log['imagePath'] ?>"><?= $log['fullName'] ?></td>
                    <?php endif; ?> 
                    <td><?= $log['activity'] ?> </td>
                    <td><?= $log['activityDate'] ?> </td>
                    <td><?= $log['activityTime'] ?> </td> 
                    
                    <div id="delete<?= $log['id'] ?>" class="modal fade" role="dialog">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content paper">
                                <div class="modal-header" style="background-color: <?= $this->session->color ?>;color:#fff";> 
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4> <i class="fa fa-trash"></i> Delete</h4>
                                </div>
                                <div class="modal-body">
                                    <h6>Delete this entry ? <?= $log['id'] ?></h6>
                                </div>
                                <div class="modal-footer"> 
                                    <a href="<?= site_url('logs/delete/'.$log['id']) ?>" 
                                        class="btn btn-<?= $this->session->button ?> btn-block btn-sm">
                                        <i class="fa fa-check"></i> Yes
                                    </a>
                                </div>    
                            </div>
                        </div>
                    </div>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<?= $footer ?>

 
  <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar"> 
        <section class="sidebar">
            <div class="user-panel">
                <div class="pull-left image">
                    <img style="height: 45px" src="<?= base_url() . $this->session->image ?>" class="img-circle" alt="User Image"> 
                </div>
                <div class="pull-left info">
                    <p style="font-size: 8px"><?= $this->session->userType ?></p>
                    <?= $this->session->inCharge ?>
                </div>
            </div>

            <ul class="sidebar-menu" data-widget="tree">
                <li id="d" class="<?= ($page == 'dashboard')? 'active' : '' ?>">
                    <a href="<?= site_url('dashboard') ?>">
                        <i class="fa fa-dashboard"></i> 
                        <span>Dashboard</span>
                    </a>
                </li>

                <li class="<?= ($page == 'request')? 'active' : '' ?>">
                    <a href="<?= site_url('request') ?>">
                        <i class="fa fa-send"></i> 
                        <span>Request
                            <?php if ($this->session->request > 0): ?>
                                    <span>(<?= $this->session->request ?>)</span>
                            <?php endif ?>
                        </span>
                    </a>
                </li>


                <li class="<?= ($page == 'profile')? 'active' : '' ?>" id="c">
                    <a href="<?= site_url('profile') ?>">
                        <i class="fa fa-globe"></i> 
                        <span>The Company</span> 
                    </a> 
                </li> 

                <li class="<?= ($page == 'quotation')? 'active' : '' ?>" id="q">
                    <a href="<?= site_url('quotation') ?>">
                        <i class="fa fa-edit"></i> 
                        <span> Quotation  
                            <?php if($this->session->all_quotation > 0): ?>
                                <span>(<?= $this->session->all_quotation ?>)</span>
                            <?php endif; ?>
                        </span>  
                    </a> 
                </li>

                <li class="<?= ($page == 'project')? 'active' : '' ?>" id="p">
                    <a href="<?= site_url('projects') ?>">
                        <i class="fa fa-tasks"></i> 
                        <span> Projects 
                            <?php if($this->session->all_project > 0): ?>
                            <span>(<?= $this->session->all_project ?>)</span>
                            <?php endif; ?>
                        </span> 
                    </a> 
                </li>

                <li class="<?= ($page == 'client')? 'active' : '' ?>" id="c">
                    <a href="<?= site_url('clients') ?>">
                        <i class="fa fa-user"></i> 
                        <span> Client
                        <?php if($this->session->all_client > 0): ?>
                            <span>(<?= $this->session->all_client ?>)</span>
                            <?php endif; ?>
                        </span> 
                    </a> 
                </li>

                <li class="<?= ($page == 'inventory')? 'active' : '' ?>" id="i">
                    <a href="<?= site_url('inventory') ?>">
                        <i class="fa fa-wrench"></i> 
                        <span> Inventory
                            <?php if($this->session->all_item > 0): ?>
                            <span>(<?= $this->session->all_item ?>)</span>
                            <?php endif; ?>
                        </span> 
                    </a> 
                </li>

                <li class="treeview <?= ($page == 'account')? 'active' : '' ?>" id="u">
                    <a href="#">
                        <i class="fa fa-group"></i> 
                        <span> User Accounts
                            <?php if($this->session->all_account > 0): ?>
                            <span>(<?= $this->session->all_account ?>)</span>
                            <?php endif; ?>
                        </span>
                        <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                    </a>
                    <ul class="treeview-menu">
                        <?php if ($this->session->userType == "Administrator") : ?>
                            <li><a href="<?= site_url('account/get/0') ?>">---------All---------</a></li>
                            <li>
                                <select style="width: 100%" id="search_useraccount" class="form-control select2">
                                    <option disabled selected>Select Here</option>
                                    <?php foreach ($users_list as $user): ?>
                                        <option> <?= $user['fullName'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </li>
                            <span id="found_useraccounts">
                                <?php foreach ($users_list as $user): ?> 
                                <li class="hover">
                                    <a href="<?= site_url('account/update_form/'. $user['id'] ) ?>">
                                        <img src="<?= base_url() . $user['imagePath'] ?>" 
                                            class=" img-circle small_img"> 
                                        <?= $user['fullName'] ?>
                                        <span id="badge" class="hidden-xs text-muted">
                                            <?php if($user['userType'] == "Administrator"): ?>
                                                <span class="label label-primary">A</span>
                                            <?php else: ?>
                                                <span class="label label-default">E</span>
                                            <?php endif; ?>
                                        </span>
                                    </a>
                                </li> 
                                <?php endforeach; ?>
                            </span>
                        <?php else : ?>
                            <li>
                                <a href="<?= site_url('account/get/'. $this->session->id ) ?>">
                                    <img src="<?= $this->session->image ?>" class="small_img img-circle"> 
                                    <?= $this->session->inCharge ?>
                                    <span style="font-size: 6px;" class="hidden-xs text-muted">
                                        <?= $this->session->userType ?>
                                    </span>
                                </a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>

                <li class="treeview <?= ($page == 'logs')? 'active' : '' ?>" id="l">
                    <a href="#">
                        <i class="fa fa-flag"></i> 
                        <span>Activity Logs</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <?php if ($this->session->userType == "Administrator") : ?>
                            <li><a href="<?= site_url('logs/get/All') ?>">----------All---------</a></li>
                            <li>
                                <select style="width: 100%" id="search_user_log" class="form-control select2">
                                    <option disabled selected>Select Here</option>
                                    <?php foreach ($users_list as $user): ?>
                                        <option> <?= $user['fullName'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </li>
                            <span id="found_user_logs">
                                <?php foreach ($users_list as $user): ?>
                                <li class="hover">
                                    <a href="<?= site_url('logs/get/'. $user['id'] ) ?>">
                                        <img src="<?= base_url() . $user['imagePath'] ?>" class="small_img img-circle">
                                        <?= $user['fullName'] ?>
                                    </a>
                                </li>
                                <?php endforeach; ?>
                            </span>
                        <?php else : ?>
                            <li>
                                <a href="<?= site_url('logs/get/'. $this->session->id ) ?>">
                                    <img src="<?= $this->session->image ?>" class="small_img img-circle"> 
                                    <?= $this->session->inCharge ?>
                                </a>
                            </li>
                        <?php endif; ?>
                    </ul>
                </li>


                <li class="treeview <?= ($page == 'stats')? 'active' : '' ?>" id="e">
                    <a href="#">
                        <i class="fa fa-industry"></i> 
                        <span>Statistics</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li>
                            <a href="<?= site_url('expenses') ?>">
                                <i class="fa fa-money"></i> 
                                <span>Expenses</span>
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a> 
                        </li> 
                        <li>
                            <a href="<?= site_url('profit') ?>">
                                <i class="fa fa-money"></i> 
                                <span>Profit</span>
                                <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                            </a> 
                        </li> 
                    </ul>
                </li>
            </ul>
        </section>
    </aside>
    <div class="content-wrapper" id="bdy_intvntry"> 
         <section class="content container-fluid" > 


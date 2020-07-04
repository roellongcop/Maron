<?= $header ?>
<?= $sidenav ?>
<?= $alert ?>
    <br><br> 
    <section class="content-header">
        <h1>
            <i class="fa fa-wrench"></i> Our 
            <span class="hidden-xs text-muted">Inventory Stocks</span> 
        </h1>
        <ol class="breadcrumb">
            <li><a href="<?= site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="<?= site_url('inventory/list/All') ?>"><i class="fa fa-wrench"></i> Inventory</a></li>
            <li class="active"><a href="">All Stock</a></li>
        </ol>
        <br><hr>
    </section> 
        
       <!-- BUTTONS -->
    <div class="pull-right">
        <a href="<?= site_url('inventory/add_form') ?>" class="card btn btn-<?= $this->session->button ?>">
            <i class="fa fa-plus"></i> Add New Item
        </a>
    </div><br><br>
    <div class="dropdown">
        <a class="btn btn-success dropdown-toggle" title="Print Inventory" data-toggle="dropdown" href="#" >
            <i class="fa fa-print"></i> 
        </a>
        <ul class="dropdown-menu">
            <li><a id="btn-print-inventory-all" href="#">All Items</a></li> 
            <li><a id="btn-print-inventory-exceed" href="#">Exceed Items</a></li> 
            <li><a id="btn-print-inventory-normal" href="#">Normal Items</a></li> 
            <li><a id="btn-print-inventory-critical" href="#">Critical Items</a></li> 
            <li><a id="btn-print-inventory-empty" href="#">Empty Items</a></li> 
        </ul>
        <a id="btn-export-item-confirm" title="Export Selected Item" class="btn btn-primary " href="#export-item" data-toggle="modal"> <i class="fa fa-share"></i> 
        </a> 

        <a id="btn-edit-item" title="Edit Selected Item" class="btn btn-warning" href="#edit_item" data-toggle="modal">
            <i class="fa fa-edit"></i> 
        </a> 

        <a id="btn-delete-item-confirm" title="Delete Selected Item" class="btn btn-danger " href="#del_item" data-toggle="modal"> <i class="fa fa-trash"></i> 
        </a> 
    </div><br><br> 

    <form id="frm-check">
        <div class="panel panel-default container-fluid">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a  data-toggle="tab" href="#all"><i class="fa fa-address-book"></i>All Records 
                            <span>(<?= $this->session->all_item ?>)</span>
                        </a>
                    </li>
                    <li>
                        <a  data-toggle="tab" href="#normal"><i class="fa fa-spinner"></i>Normal 
                            <span>(<?= $this->session->normal ?>)</span>
                        </a>
                    </li> 
                    <li>
                        <a  data-toggle="tab" href="#critical"><i class="fa fa-wrench"></i>Critical
                            <span>(<?= $this->session->critical ?>)</span>
                        </a>
                    </li> 
                    <li>
                        <a  data-toggle="tab" href="#exceed"><i class="fa fa-thumb-tack"></i>Exceed 
                            <span>(<?= $this->session->exceed ?>)</span>
                        </a>
                    </li> 
                    <li>
                        <a  data-toggle="tab" href="#empty"><i class="fa fa-cloud"></i>Empty
                            <span>(<?= $this->session->empty ?>)</span>
                        </a>
                    </li> 
                </ul>
            </div>
            <div class="tab-content">
                <div id="all" class="tab-pane fade in active"><?= $all ?></div>
                <div id="normal" class="tab-pane fade in"><?= $normal ?></div>
                <div id="critical" class="tab-pane fade in"><?= $critical ?></div>
                <div id="exceed" class="tab-pane fade in"><?= $exceed ?></div>
                <div id="empty" class="tab-pane fade in"><?= $empty ?></div>
            </div>
        </div>
    </form>
 
<?= $footer ?>
<?= $modal ?>
                                          
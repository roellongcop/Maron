
    <table class="table table-bordered responsive-table example" > 
        <thead>
            <!-- para to sa heading!-->
            <th><label><input type="checkbox" id="check-all"> Check all</label></th> 
            <th> Name</th>
            <th>Description</th>
            <th>Unit</th>
            <th>Size</th>
            <th>Color</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Max Stock</th>
            <th>Min Stock</th> 
            <th>Status</th>     
        </thead>

        <tbody>
            <?php foreach ($all_list as $list) : ?>
                <tr> 
                    <td>
                        <input class="check-all" value="<?= $list['id'] ?>" type="checkbox" name="checkbox[]">
                    </td>
                    
                    <td><?= $list['itemName'] ?></td>
                    <td><?= $list['itemDescription'] ?></td>
                    <td><?= $list['unit'] ?></td>
                    <td><?= $list['size'] ?></td> 
                    <td><?= $list['color'] ?></td>     
                    <td><?= $list['price'] ?></td>
                    <td><?= $list['stockOnHand']?></td>
                    <td><?= $list['maximumStock']?> </td>
                    <td><?= $list['criticalStock']?></td> 
                    <td>
                        <?php if ($list['status'] == "Normal"): ?>
                            <div class="progress sm progress-xs progress-striped active">
                                <div data-toggle="tooltip" title="Normal Stock" class="progress-bar progress-bar-primary" 
                                    style="width: 70%"> 
                                </div> 
                            </div> 
                        <?php elseif ($list['status'] == "Exceed") : ?>
                            <div class="progress sm progress-xs progress-striped active">
                                <div data-toggle="tooltip" title="Exceed Stock" class="progress-bar progress-bar-success" 
                                    style="width: 100%"> 
                                </div>
                            </div> 
                        <?php elseif ($list['status'] == "Critical") : ?>
                            <div class="progress sm progress-xs progress-striped active">
                                <div  data-toggle="tooltip" title="Critical Stock" class="progress-bar progress-bar-warning" 
                                    style="width: 30%"> 
                                </div>  
                            </div> 
                        <?php elseif ($list['status'] == "Empty") : ?>
                            <div class="progress sm progress-xs progress-striped active">
                                <div data-toggle="tooltip" title="Empty Stock" class="progress-bar progress-bar-danger" 
                                    style="width: 2%"> 
                                </div>
                            </div> 
                        <?php endif; ?>  
                    </td>  
                </tr> 
            <?php endforeach; ?>
        </tbody>
    </table> 
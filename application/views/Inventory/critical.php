 
 
<table class="table table-bordered responsive-table example" > 
    <thead>
        <!-- para to sa heading!-->
        <th><label><input type="checkbox" id="check-critical"> Check all</label></th> 
        <th> Name</th>
        <th>Description</th>
        <th>Unit</th>
        <th>Size</th>
        <th>Color</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Max Stock</th>
        <th>Min Stock</th>   
    </thead>

    <tbody>
        <?php foreach ($critical_list as $list) : ?>
            <tr>
                <td><input class="check-critical" value="<?= $list['id'] ?>" type="checkbox" name="checkbox[]"></td>
                <td><?= $list['itemName'] ?></td>
                <td><?= $list['itemDescription'] ?></td>
                <td><?= $list['unit'] ?></td>
                <td><?= $list['size'] ?></td> 
                <td><?= $list['color'] ?></td>     
                <td><?= $list['price'] ?></td>
                <td><?= $list['stockOnHand']?></td>
                <td><?= $list['maximumStock']?> </td>
                <td><?= $list['criticalStock']?></td>   
            </tr>  
        <?php endforeach; ?>

    </tbody>
</table>
 

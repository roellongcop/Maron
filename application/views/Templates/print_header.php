<?php foreach ($company_profile as $profile) : ?>
		<?php if ($profile['legend'] == "Company_name"):  
			$company = $profile['description'];
 		endif; 
		if ($profile['legend'] == "Company_address"): 
			$address = $profile['description'] ;
		elseif ($profile['legend'] == "Company_email"): 
			$email = $profile['description'];
		endif; ?> 
<?php endforeach; ?>

<center>
	<table style="border:none;">
		<tr> 
				<td style="border:none;">
					<img src="<?= base_url() . 'uploads/templates/logo.png' ?>" style="width: 100px;height: 100px;">  
				</td>  
			<td style="border:none;">
				<center>
					<h4>Republic of The Philippines   
						<h3 style="margin-top: -2%"><?= $company ?></h3> 
		 			</h4> 
		 			<p>
		 				<?= $address ?>  
		 				<?= $email ?>
		 			</p>
				</center>

			</td>
		</tr>
	</table>
</center>
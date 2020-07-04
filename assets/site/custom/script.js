function find_myrequest(id)
{
	$('.hover').sideNav('hide');
	$.ajax({ 
		type: 'post',
		data: {id : id },
		dataType: 'json', 
		url: base_url + 'site/user/find_myrequest',
		success: function(response){
			var html = '';
			html += '<div class="col s12 m12">';
			html += '<h4>' +response[0]['project_name']+ '</h4>';
			html += '<blockquote>';
			html += '<p><strong><i class="fa fa-book"></i> Description : </strong>' +response[0]['project_name']+ '</p>';
			html += '<p><strong><i class="fa fa-map-marker"></i> Address : </strong>' +response[0]['address']+ '</p>';
			html += '<p><strong><i class="fa fa-calendar"></i> Date Created : </strong>' +response[0]['date_created']+ '</p>';
			
			if (response[0]['status'] == 1) {
				html += '<p><strong><i class="fa fa-refresh"></i> Status : </strong>Cancelled</p>';
				html += '</blockquote>';
				html += '<a href="#resend_request" onclick="resend_request(' + response[0]['request_id'] + ',`' + response[0]['project_name'] + '`)" class="btn green modal-trigger" >Resend <i class="fa fa-send"></i></a>';
			} else if (response[0]['status'] == 0) {
				html += '<p><strong><i class="fa fa-refresh"></i> Status : </strong>Pending</p>';
				html += '</blockquote>';
				html += '<a href="#delete_request_modal" onclick="delete_request(' + response[0]['request_id'] + ',`' + response[0]['project_name'] + '`)" class="btn red modal-trigger" >Cancel this </a>';
			}
			
			html += '<a href="'+base_url + 'request_info/'+response[0]['request_id'] +'" class="btn btn-blue">More Details</a> ';
			html += '</div>';
			 
			$('#myrequest').html(html);
			$('#myrequest-list').hide();
			$('#myrequest').show('slow');

		}
	});
}

function load_myrequests()
{
	$.ajax({ 
		dataType: 'json', 
		url: base_url + 'site/user/load_myrequests',
		success: function(response){
			var html = '';
			for (var i = response.length - 1; i >= 0; i--) {
				html += '<li class="hover" onclick="find_myrequest('+ response[i]['request_id'] +')"><a class="font-white" href="#!" >'+ response[i]['project_name'] + '</a></li>';
			}
			$('#myrequest_list').html(html);
		}
	});
}

function find_myproject(id)
{
	$('.hover').sideNav('hide');

	$.ajax({ 
		type: 'post',
		data: {id : id},
		dataType: 'json', 
		url: base_url + 'site/user/load_myprojects',
		success: function(response){

			var html = "<script>$('.materialboxed').materialbox();</script>"; 
			for (var i = response.length - 1; i >= 0; i--) {
				html += '<div class="col s12 m6">';
				html += '<img src="' + base_url + response[i]['imagePath'] + '" class="materialboxed responsive-img">';
				html += '</div>'; 


				html += '<div class="col s12 m6">';
				
				html += '<h4><strong>' + response[i]['project_name'] +'</strong></h4>';
				html += '<blockquote>'; 
				html += '<p><strong><i class="fa fa-pencil"></i> Description : </strong>' + response[i]['scope_of_work'] +'</p>';
				html += '<p><strong><i class="fa fa-map-marker"></i> Address : </strong>' + response[i]['project_address'] +'</p>';
				html += '<p><strong><i class="fa fa-refresh"></i> Status : </strong>' + response[i]['projectStatus'] +'</p>';
				html += '<p><strong><i class="fa fa-calendar"></i> Date Started : </strong>' + response[i]['date_started'] +'</p>';
				html += '<p><strong><i class="fa fa-calendar"></i> Expected Finished Date : </strong>' + response[i]['expected_finished'] +'</p>';
				html += '<p><strong><i class="fa fa-user-circle"></i> Project Leader : </strong>';
				html += '<div class="chip grey" style="color:white">';
				html += '<img src="'+ base_url + response[i]['image'] +'">';
				html += response[i]['fullName'];
				html += '</div>';
				html += '</p>';
				html += '<br><a href="' + base_url + 'site/projects/'+response[i]['id'] + '" class="btn btn-blue">More Details</a>';
				html += '</blockquote>'; 
				html += '</div>'; 
			}
			$('#myproject').hide();
			$('#myproject-list').hide('slow');
			
			$('#myproject').html(html);
			$('#myproject').show('slow');

			
		}
	});
}

function load_myprojects()
{ 
	$.ajax({ 
		dataType: 'json', 
		url: base_url + 'site/user/load_myprojects',
		success: function(response){
			var html = '';
			for (var i = response.length - 1; i >= 0; i--) {
				html += '<li class="hover" onclick="find_myproject('+ response[i]['id'] +')"><a class="font-white" href="#!" >'+ response[i]['project_name'] + '</a></li>';
			}
			$('#myproject_list').html(html);
		}
	});
}


function delete_request(id , project_name)
{ 
	var confirm = '<br><blockquote>You are going to cancelled project request <strong style="color:#337ab7">'+ project_name +'.</strong></blockquote>';

	$('#del_request_confirm').html(confirm);
	$('#request_id').val(id);
}

function resend_request(id , project_name)
{ 
	var confirm = '<br><blockquote>You are going to Resend project request <strong style="color:#337ab7"> '+ project_name +'.</strong></blockquote>';

	$('#resend_confirm').html(confirm);
	$('#btn_resend').html('<a href = "'+base_url+'site/user/resend_request/'+id+'" class="btn btn-blue">Continue</a>');
}

function load_profile()
{  
 	$.ajax({ 
		dataType: 'json', 
		url: base_url + 'site/user/load_profile',
		success: function(response) {
			
			var html = '<li class="collection-header"><h5><i class="fa fa-info"></i> Your Information</h5></li>' 
				+ '<li class="collection-item"><strong>Fullname : </strong> '+response[0]["client_name"]+' </li>' 
				+'<li class="collection-item"><strong>Position : </strong> '+response[0]["client_position"]+'</li>' 
				+'<li class="collection-item"><strong>Mobile Number : </strong> '+response[0]["client_number"]+'</li>' 
				+'<li class="collection-item"><strong>Email : </strong> '+response[0]["client_email"]+'</li>' 
				+'<li class="collection-item"><strong>Address : </strong> '+response[0]["client_address"]+'</li>'
				+'<li class="collection-item"><strong>Username : </strong> '+response[0]["username"]+'</li>' 
				+'<li class="collection-item"><strong>Password : </strong>xxxxxx' 
				+'<a href="#manage_password" onclick="toggle_password()" class="right"> Change Password?</a>'
				+'</li> ' 
				+'<li class="collection-item">'
				+'<a href='+home+' class="waves-effect waves-light btn">Back to Home' 
				+'<i class="fa fa-home"></i>' 
				+'</li>';
			$('#client_data').html(html);  
 
			$('#name').val(response[0]["client_name"]);
			$('#position').val(response[0]["client_position"]);
			$('#number').val(response[0]["client_number"]);
			$('#email').val(response[0]["client_email"]);
			$('#address').val(response[0]["client_address"]);
			$('#client-username').val(response[0]["username"]);  

		}
	})
}

function toggle_password()
{
	$('#update_info').toggle('slow');
	$('#manage_password').toggle('slow');
}

function delete_work_des(description)
{ 
	$.ajax({
		type: 'post',
		dataType: 'json',
		data: {description: description},
		url: base_url + 'site/user/delete_work_des',
		success: function(response) {
			$('#Preferences').html(response); 
			var $toastContent = $('<span>Work Description Deleted</span> ').add($(' <i class="fa fa-check right"></i>'));
			Materialize.toast($toastContent, 5000);
		}
	})
}


function delete_work_des_confirmation(description)
{
	var msg = '<blockquote><p>You are going to delete work Category : <strong style="color:#337ab7"> '+description+'</strong>' +
                 '<br>Deleting this will delete  : <strong style="color:#337ab7"> All </strong> of its materials!</p></blockquote>';
       var btn = '<button onclick="delete_work_des(`'+description+'`)"' +
       	   'class="modal-action modal-close waves-effect waves-green btn btn-blue">Continue</button>'
       $('#del_work_des_confirm').html(msg);
       $('#btn_del_work_des').html(btn);
}

function delete_material(id)
{
	$.ajax({
		type: 'post',
		dataType: 'json',
		data: {id: id},
		url: base_url + 'site/user/delete_material',
		success: function(response) {
			$('#Preferences').html(response); 
			var $toastContent = $('<span>Material Deleted</span> ').add($(' <i class="fa fa-check right"></i>'));
			Materialize.toast($toastContent, 5000);
		}
	});
}


function delete_material_confirmation(id) { 
	$.ajax({
		type: 'post',
		dataType: 'json',
		data: {id: id},
		url: base_url + 'site/user/delete_material_confirmation',
		success: function(response) {
			var html = '<blockquote>';
			html += '<p>You are going to delete material : <strong style="color:#337ab7"> ' + response[0]["material_name"] +'</strong><br>';
			html += 'Description : <strong style="color:#337ab7"> '+ response[0]["material_description"] +'</strong></p>';
			html += '</blockquote>';
 			var btn = '<a onclick="delete_material('+ response[0]["preference_id"] + ')" class="modal-action modal-close waves-effect waves-green btn btn-blue ">Continue</a>';
			$('#del_mat_confirm').html(html); 
			$('#btn_del_mat').html(btn); 
		}
	});
}



function load_request()
{
	$.ajax({
		dataType: 'json',
		url: base_url + 'site/user/load_request',
		success: function(response) {
			$('#Preferences').html(response); 
		}
	});
}


function load_product_list() {
	$.ajax({
		dataType: 'json',
		url: base_url + 'site/Pages/load_product_list',
		success: function(response) {
			var html = '';
			for (var i = 0; i <= response.length - 1 ; i++) {
				html += '<li class="hover" onclick="show_product('+ response[i]["product_id"] +')">' +  response[i]["product_name"] + '</li>';
			}
			$('#menu_list').html(html);
		}
	});
}


function view_img(id)
{ 
	$.ajax({
		type: 'post',
		data: { id : id },
		dataType: 'json',
		url : base_url + 'site/Pages/view_img',
		success: function(data)
		{ 
			$('#view').html(data);    
		}
	});
}

function show_product(id)
{    
	$('.button-collapse').sideNav('hide');
	$('#product_list').toggle('slow');
	$('#name').fadeOut(); 
	$('#description').fadeOut();  
	$('#product_carousel_img').hide('slow');  

	$.ajax({
		type: 'post',
		data: { id : id },
		dataType: 'json',
		url : base_url + 'site/Pages/find_product',
		success: function(data) { 
			var img = '<img src="'+ base_url + data.images +'" class="responsive-img materialboxed">';
			$('#product_carousel_img').html(img);  
			$('#description').html(data.description);  
			$('#name').html(data.name);  
			$('#product-name').html('<strong>' + data.name + '</strong>');  
			$('#hide_carousel').hide();
			$('#name').fadeIn('slow'); 
			$('#description').fadeIn('slow'); 
			$('#product_carousel_img').show('slow'); 
			$('.materialboxed').materialbox();
		}

	});
} 

$(document).ready(function(){  
	// PARA SA TAP
	// $('#menu').on('click',function(){
	// 	$('.tap-target').tapTarget('open');
	// })


	$('.slider').slider();
	var table = $('.example').DataTable({});
	$('.materialboxed').materialbox();
	$('select').material_select();
	$('.tooltipped').tooltip({delay: 50});
	$('.modal').modal();
	$(".button-collapse").sideNav();
	$('.carousel').carousel(); 
	$('.parallax').parallax(); 
 	$(".dropdown-button").dropdown();
 	$('.carousel.carousel-slider').carousel();
 	// Initialize collapse button
	$(".button-collapse").sideNav();
	// Initialize collapsible (uncomment the line below if you use the dropdown variation)
	//$('.collapsible').collapsible();
	
	$('.dropdown-button').dropdown({
		inDuration: 300,
		outDuration: 225,
		constrainWidth: false, // Does not change width of dropdown to that of the activator
		hover: true, // Activate on hover
		gutter: 0, // Spacing from edge
		belowOrigin: false, // Displays dropdown below the button
		alignment: 'left', // Displays dropdown with edge aligned to the left of button
		stopPropagation: false // Stops event propagation
	});

	$('.datepicker').pickadate({
		selectMonths: true, // Creates a dropdown to control month
		selectYears: 15, // Creates a dropdown of 15 years to control year,
		today: 'Today',
		clear: '<span style="color: teal">All</span>',
		close: 'Ok',
		closeOnSelect: true // Close upon selecting a date,
	}); 

	


	$('#project-icon').on('click', function(){ 
		window.location.href = base_url + 'site/client_project_list';
	});

	$('#request-icon').on('click', function(){ 
		window.location.href = base_url + 'site/request_list';
	});

	$('#accomplishment-icon').on('click', function(){ 
		window.location.href = base_url + 'accomplishments';
	});

	$('#user-icon').on('click', function(){ 
		window.location.href = base_url + 'client_profile';
	});

	$('#btn-project-list').on('click', function(){ 
		window.location.href = base_url + 'site/client_project_list';
	});

	$('#btn-quotation-view').on('click', function(){ 
		var quotation_id = $('#quotation-id-view').val();
		window.location.href = base_url + 'client_notif/view/'+quotation_id;
	});

	$('#btn-approved').on('click', function(){ 
		var quotation_id = $('#quotation_id').val();
		window.location.href = base_url + 'site/user/approved_quotation/'+quotation_id;
	});

	$('#name').on('click', function(){
		$('#lblname').html('Fullname');
	});

	$('#all-myprojects').on('click', function(){
		$('#myproject').hide('slow');
		$('#myproject-list').show('slow');
		$('#all-myprojects').sideNav('hide');
	});

	$('#position').on('click', function(){
		$('#lblposition').html('Position (if in business)');
	});
	$('#number').on('click', function(){
		$('#lblnumber').html('Mobile Number');
	});
	$('#email').on('click', function(){
		$('#lblemail').html('Email');
	});
	$('#address').on('click', function(){
		$('#lbladdress').html('Home Address');
	});
	$('#username').on('click', function(){
		$('#lblusername').html('Username');
	});

	$('.side_nav').on('click', function(){
		$('#navbar-fixed').removeClass('navbar-fixed'); 
		$('#page_nav_fixed').removeClass('navbar-fixed'); 
		$('#user_nav_fixed').removeClass('navbar-fixed'); 
	});


	$('#navbar-fixed').on('click', function(){
		$('#navbar-fixed').sideNav('hide');
	});

	$('body').on('click', function(){
		$('#navbar-fixed').addClass('navbar-fixed'); 
		$('#page_nav_fixed').addClass('navbar-fixed'); 
		$('#user_nav_fixed').addClass('navbar-fixed'); 
	});



	$('#tab-info').on('click', function(){
		$('#the-process').show('slow');
	});


	$('#tab-pref').on('click', function(){
		$('#the-process').hide('slow');
	});



	$('#p_name').on('input', function(){
		$('#pname').html($(this).val());  
		if ($(this).val() == '') {
			$('#btn-send-request').hide();
		} 
		else {
			$('#btn-send-request').show();
		}
	});

	$('#padd').on('input', function(){
		$('#p_add').html('<strong>Address : </strong>'+ $(this).val());  
	});

	$('#pdes').on('input', function(){
		$('#p_des').html('<strong>Description : </strong>'+$(this).val());  
	});

 

	// Add smooth scrolling to all links in navbar + footer link
       $("footer a[href='#home'],a[href='#home'],a[href='#services'],a[href='#projects']," +
       	"a[href='#teams'],a[href='#about'],a[href='#contacts']").on('click', function(event) {
 
              event.preventDefault(); 
              var hash = this.hash; 
              $('html, body').animate({
                     scrollTop: $(hash).offset().top
              }, 900, function(){ 
                     window.location.hash = hash;
              });
       });



       	var s3 = function() { 
			$('.service_img').carousel('next');  
       	}

       setInterval(s3, 5000);

       var s7 = function() {  
		$('#h_carousel').carousel('next'); 
		$('.carousel.carousel-slider').carousel('next');  
       }

       setInterval(s7, 7000);

       $('#btn_f1').on('click', function(){ 
       	$('#f1').hide('slow'); 
       	$('#f2').fadeIn('slow');  
       });
 
 

       $('#btn_f2_prev').on('click', function(){ 
       	$('#f2').hide('slow'); 
       	$('#f1').fadeIn('slow');  
       });

       

       
  

       $('#btn_materials').on('click', function(){ 
       	$('#workers').fadeOut();
       	$('#transportations').fadeOut();
       	$('#materials').fadeIn();  
       });

       $('#btn_workers').on('click', function(){ 
       	$('#materials').fadeOut();
       	$('#transportations').fadeOut();
       	$('#workers').fadeIn();   
       }); 

 	$('#btn_transportations').on('click', function(){ 
 		$('#materials').fadeOut();
       	$('#workers').fadeOut();
       	$('#transportations').fadeIn();  
       });



	$('.selected_product').on('click', function(){ 
       	$('#product_list').toggle('slow');
       });


       $('#list').on('click', function(){ 
       	$('#product_list').toggle('slow');
       });

  
  	$('#all-myrequests').on('click', function(){ 
		$('#myrequest').hide(); 
		$('#myrequest-list').show('slow'); 
		$('.hover').sideNav('hide');
	});

	$('#html').on('click', function(){ 
		$('.button-collapse').sideNav('hide'); 
	});

	$('#password').on('input', function(){  
		var p1 = $('#password').val();
		var p2 = $('#re-password').val(); 
		if (p1 == p2) { 
			$('#btn_submit_register').show();
			$('#password_error').fadeOut(); 
		} else {
			$('#btn_submit_register').hide(); 
			$('#password_error').fadeIn(); 
		} 
	});

	$('#re-password').on('input', function(){  
		var p1 = $('#password').val();
		var p2 = $('#re-password').val(); 
		if (p1 == p2) {
			$('#btn_submit_register').show();
			$('#password_error').fadeOut(); 
		} else {
			$('#btn_submit_register').hide(); 
			$('#password_error').fadeIn(); 
		} 
	});



       $('#all_product').on('click', function(){ 
       	$('.button-collapse').sideNav('hide');
       	$('#hide_carousel').fadeIn('slow');
		$('#name').fadeOut('slow'); 
		$('#description').fadeOut('slow'); 
		$('#product_carousel_img').fadeOut('slow'); 
       });


       $('.card').hover(
        	function() {
            		$(this).find('> .card-action > a.activator').click();
            		$(this).find('> .card-image > img.activator').click();
        	}, function() {
            		$(this).find('> .card-reveal > .card-title').click();
        	} 
    	);


    	


// AJAX CODING
	$('#search-notif').on('input', function(){ 
		$.ajax({ 
			type: 'post',
			data: {word : $(this).val()},
			dataType: 'json', 
			url: base_url + 'site/user/search_notif',
			success: function(response){  
				var html = '';
				for (var i = response.length - 1; i >= 0; i--) {
					html += '<div class="col s12 m6">' +
				                	'<blockquote>' +
					                    	'<div class="chip grey">'+
					                        	'<img src="' + base_url + response[i]["imagePath"] +'" alt="Image">'+
					                        	response[0]["fullName"] +
					                    	'</div>'+
					       		response[i]["date_occur"] + '<br>'+
					       		response[i]["description"] + '<br>' +
					       		'<a href="'+ response[i]["link"] +'" class="btn btn-blue">View</a>'+
					       	'</blockquote>'+
			       		'</div>';
				}
				$('#found-notif').html(html)
				 
			}
		});
	});


 
	

    $('#btn-forgot-password').on('click', function(){ 
    	$('#login-panel').fadeOut();
    	$('#forgot-panel').fadeIn('slow'); 
    });


    $('#show-login-panel').on('click', function(){ 
    	$('#forgot-panel').fadeOut();
    	$('#login-panel').fadeIn('slow'); 
    });





    $('#admin-forgot-password').on('click', function(){ 
		$.ajax({ 
			type: 'post',
			data: {code : $('#password_code').val()},
			dataType: 'text', 
			url: base_url + 'site/user/forgot_password/admin',
			success: function(response){
				if (response == 'false') {
					var html = '<br><p style="color:red">Code Not Found</p>'; 
				} 
				else { 
					var html = '<br>Your Password is <strong>'+response+'</strong>'; 
				}
				$('#forgot_password').html(html); 
			}
		});
	});



	$('#btn_forgot').on('click', function(){
		$.ajax({ 
			type: 'post',
			data: {code : $('#code').val()},
			dataType: 'text', 
			url: base_url + 'site/user/forgot_password',
			success: function(response){ 
				if (response == 'false') {
					var html = '<br><p style="color:red">Code Not Found</p>'; 
				} 
				else { 
					var html = '<br>Your Password is <strong>'+response+'</strong>';
					html += '<br><ins><a class="pulse" href="'+base_url + 'site' +'"> Click Here to Login</a></ins>';
				}
				$('#forgot_password').html(html);
			}
		});
	});


	$('#search-myrequest').on('input', function(){
		$.ajax({ 
			type: 'post',
			data: {word : $(this).val()},
			dataType: 'json', 
			url: base_url + 'site/user/find_myrequest_list',
			success: function(response){
				var html = '';
				for (var i = response.length - 1; i >= 0; i--) {
					html += '<li class="hover" onclick="find_myrequest('+ response[i]['request_id'] +')"><a class="font-white" href="#!" >'+ response[i]['project_name'] + '</a></li>';
				}
				$('#myrequest_list').html(html);
			}
		});
	});

	$('#search-myproject').on('input', function(){
		$.ajax({ 
			type: 'post',
			data: {word : $(this).val()},
			dataType: 'json', 
			url: base_url + 'site/user/find_myproject',
			success: function(response){
				var html = '';
				for (var i = response.length - 1; i >= 0; i--) {
					html += '<li class="hover" onclick="find_myproject('+ response[i]['id'] +')"><a class="font-white" href="#!" >'+ response[i]['project_name'] + '</a></li>';
				}
				$('#myproject_list').html(html);
			}
		});
	});


	$('#refresh_accomplishments').on('click', function(){     
		$.ajax({
			type: 'post',
			dataType: 'json', 
			url : base_url + 'site/user/load_accomplishments',
			data: {id : $('#project_id').val()}, 
			success: function(response) {   
				$('#accomplishments_filtered').html(response);
			}
		});
	});


	$('#filter_accomplishments').on('change', function(){   
		if ($(this).val() == '') {
			$.ajax({
				type: 'post',
				dataType: 'json', 
				url : base_url + 'site/user/load_accomplishments',
				data: {id : $('#project_id').val()}, 
				success: function(response) {   
					$('#accomplishments_filtered').html(response);
				}
			});
		} else {
			$.ajax({
				type: 'post',
				dataType: 'json',
				data: { date : $(this).val() ,id : $('#project_id').val() },  
				url : base_url + 'site/user/filter_accomplishments',
				success: function(response) {   
					$('#accomplishments_filtered').html(response);
				}
			});
		}
		
	});


 	$('#btn_f3_prev').on('click' , function(){
 		$('#f3').hide('slow');
 		$('#f2').show('slow');
 	});


 	$('#btn_f2').on('click', function(){  
		$.ajax({
			type     : 'post',
			data     : {input : $('#email').val()},
			dataType : 'json',
			url      : base_url + 'site/user/check_user/client_email',
			success  : function(response) {
				if (response == true) {
					alert('Email already exist');
					$('#email').val("");
				}  else {
					$('#f2').hide('slow'); 
			       	$('#f3').fadeIn('slow');  
				}
			} 
		});
	});



 	$('#password').on('focus', function(){  
		$.ajax({
			type     : 'post',
			data     : {input : $('#username').val()},
			dataType : 'json',
			url      : base_url + 'site/user/check_user/username',
			success  : function(response) {
				if (response == true) {
					alert('Username already exist');
					$('#username').val("");
				}  
			} 
		});
	});



	$('#username').on('mouseleave', function(){  
		$.ajax({
			type     : 'post',
			data     : {input : $(this).val()},
			dataType : 'json',
			url      : base_url + 'site/user/check_user/username',
			success  : function(response) {
				if (response == true) {
					alert('Username already exist');
					$('#username').val("");
				}  
			} 
		});
	});



	$('#client-username').on('input', function(){
		$.ajax({
			type: 'post',
			data: { input : $(this).val() },  
			dataType : 'json',
			url : base_url + 'site/user/check_user/username',
			success: function(response) {  
				if (response == true) {
					var $toastContent = $('<span>Username Already used ! </span> ').add($(' <i class="fa fa-warning"> </i>'));
					Materialize.toast($toastContent, 5000);
					$('#client-username').val("");
				}
			}
		});
	});



	$('#btn_update_profile').on('click', function(){  
       	$.ajax({
			type: 'post',
			data: { 
				name : $('#name').val(),
				position : $('#position').val(),
				address : $('#address').val(),
				email : $('#email').val(),
				username : $('#client-username').val(),
				number : $('#number').val()
			},  
			url : base_url + 'site/user/update_profile',
			success: function(response) {  
				load_profile();  
				var $toastContent = $('<span>Profile Updated</span> ').add($(' <i class="fa fa-check right"></i>'));
				Materialize.toast($toastContent, 5000);
			}
		});
       });

       $('#btn_change_pass').on('click', function(){ 
       	if ($('#new_pass').val() == $('#re_pass').val()) {
       		$.ajax({
				type: 'post',
				data: {
					old : $('#old_pass').val(), 
					new : $('#new_pass').val(),
					username : $('#client-username').val()
				}, 
				dataType: 'json',
				url : base_url + 'site/user/change_password',
				success: function(response){  
					if(response == 'success') {
						var $toastContent = $('<span>Password Updated</span> ').add($(' <i class="fa fa-check right"></i>'));
						Materialize.toast($toastContent, 5000); 
					} 
					else {
						var $toastContent = $('<span>Incorrect Password</span> ').add($(' <i class="fa fa-close right"></i>'));
						Materialize.toast($toastContent, 5000);
					} 
				} 
			}); 
       	}
       	else {
       		var $toastContent = $('<span>Password Mismatch </span> ').add($(' <i class="fa fa-close right"></i>'));
			Materialize.toast($toastContent, 5000);
       	}
       	$('#old_pass').val(null);
		$('#new_pass').val(null);
		$('#re_pass').val(null);
       });

       $('#project_select').on('change', function(){ 
       	$.ajax({
			type: 'post',
			data: { id : $(this).val() },
			dataType: 'json',
			url : base_url + 'site/Pages/find_project',
			success: function(response) {   
				var html =''  
                html += "<div class='col s12 m6'>";
                html += '<img src="' + base_url + response[0]["imagePath"] + '" class="responsive-img materialboxed">';
                html += '</div>'; 

                html += '<div class="col s12 m6">';
                html += '<h5>'+ response[0]["project_name"] + '</h5>';
                html += '<blockquote>';
                html += '<p><i class="fa fa-user-circle"></i>';
                html += '<strong> Lead By : </strong>' +  response[0]["fullName"] + '<br>';
               	html += '<i class="fa fa-map-marker"></i>';
                html += '<strong> Located at :</strong> ' + response[0]["project_address"] + '<br>';
                html += '<i class="fa fa-book"></i>'; 
                html += '<strong>Description : </strong>' + response[0]["scope_of_work"] + '</p>';
                html += '</blockquote>';
                html += '</div>';

                
				$('#main_project').html(html);    
				$('.materialboxed').materialbox();
			}
		});
       });

       $('#product_menu').on('input', function(){ 
       	if ($(this).val() == '') {
       		load_product_list();
       	} else {
       		$.ajax({
				type: 'post',
				data: { id : $(this).val() },
				dataType: 'json',
				url : base_url + 'site/Pages/product_list',
				success: function(response) { 
					var html = '';
					if (response[0]["product_id"] == null) {
						html = 'No Data Found';
					}
					else {
						for (var i = response.length - 1; i >= 0; i--) {
							html += '<li class="hover" onclick="show_product('+ response[i]["product_id"] +')">' + response[i]["product_name"] + '</li>'; 
						} 
					}  
					$('#menu_list').html(html);    
				}
			});
       	}
       	
       });



       
       $('#btn_preferences').on('click', function(){ 
		$.ajax({
			type: 'post',
			dataType: 'json',
			data: {
				work_des: $('#work_des').val(),
				mat: $('#mat').val(),
				mat_des: $('#mat_des').val() 
			},
			url: base_url + 'site/user/add_preferences',
			success: function(response) {
				$('#Preferences').html(response);

				$('#work_des').val(null);
				$('#mat').val(null);
				$('#mat_des').val(null);

				var $toastContent = $('<span>Preference Added </span> ').add($(' <i class="fa fa-check right"></i>'));
				Materialize.toast($toastContent, 5000);
			}
		});
	});

      


       $('.add_pref').on('click', function(){  
       	$.ajax({ 
			dataType: 'json', 
			url: base_url + 'site/User/get_work_description',
			success: function(response) {  
				var html = '<select id="s_work_des_option"><option value="0">Add New</option>';
				for (var i = response.length - 1; i >= 0; i--) {
					html += '<option value="' + response[i]["work_description"] + '">' + response[i]["work_description"] + '</option> ';
				}
				html += '</select><label>Your Work Category</label>'; 
				$('#work_des_option').html(html);  
				$("#wd").fadeIn(); 
				$("select").material_select(); 
				$("#s_work_des_option").on("change", function(){   
					if($(this).val() != 0) {  
						$("#wd").hide(); 
						$("#work_des").val($(this).val()); 
					} 
					else { 
						$("#wd").fadeIn();  
						$("#work_des").val(""); 
					} 
				});
			}
		});
       });
       
});


    
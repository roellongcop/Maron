
function show_profile(id) { 
    $.ajax({  
        type    : 'POST',
        data    : {id: id},
        dataType: 'json',
        url     : base_url + 'admin/Profile/show_profile', 
        success : function(response){ 
            var html = ''; 
            url = base_url + 'profile/delete/'+ response[0]['profile_id']; 
            html += "<br><h4>You are going to delete <b>" + response[0]['legend'] + "</b></h4><br>";
            html += "<a  href=" + url +" class='btn btn-primary btn-sm btn-block'>Continue <i class='fa fa-arrow-right'></i></a>";  
            $('#confirm_delete_profile').html(html); 
            $('#pid').val(response[0]['id']); 
            $('#ept').val(response[0]['title']); 
            $('#epd').val(response[0]['description']); 
        }  
    });
}



function confirm_quot_delete(id) {
    $.ajax({  
        type     : 'POST',
        data     : {id: id},
        dataType : 'json',
        url      : base_url + 'admin/Quotation/delete_confirmation',
        success  : function(response){ 
            var html = ''; 
            var url = base_url + 'quotation/delete/' + response[0]['quotation_id'];
            html ="<h4>Are you sure you want delete project<b> "+ response[0]['project_name'] +"</b> ?</h4>";
            html += "<br><a  href=" + url + "  class='btn btn-primary'><i class='fa fa-check-circle'></i> Yes</a>";
            $('#delete_confirmation').html(html); 
        }  
    });
}



function load() {
    $.ajax({  
        dataType : 'json',
        url      : base_url + 'admin/Quotation/show_bill',
        success: function(data){ 
            $('#bill_of_quantities').html(data.table);
            $('#title').html(data.title);
            $('#bill').val(data.bill_info);
            $('#wc').val(data.labor_cost); 
            $('#tc').val(data.gas_cost + data.toll_cost); 
            $('#mc').val(data.material_cost); 
            $('#ptc').val(data.material_cost + data.labor_cost + data.gas_cost + data.toll_cost); 
        }  
    });
}


 
function delete_bill(id) { 
    $.ajax({
        type: 'POST', 
        data: {bill_id: id},
        dataType: 'json',
        url: base_url + 'admin/Quotation/bill_delete/'+ id,   
        success: function(data) { 
            $('#bill_of_quantities').html(data.table);
            $('#title').html(data.title);
            $('#bill').val(data.bill_info);

            // COST
            $('#wc').val(data.labor_cost); 
            $('#tc').val(data.gas_cost + data.toll_cost); 
            $('#mc').val(data.material_cost); 
            $('#ptc').val(data.material_cost + data.labor_cost + data.gas_cost + data.toll_cost); 
        }  
    });
}

function edit_bill(bill_id)
{       
    $.ajax({ 
        dataType: 'json',
        url: base_url + 'admin/Quotation/find_bill/'+ bill_id,  

        success: function(data){  
            if (data.title == 'Transportation') 
            {
                $('#e_bill_id').val(data.bill_id);
                $('#e_title').val(data.title);
                $('#title_value').val(data.title);
                $('#e_gas').val(data.materials);
                $('#e_toll').val(data.labor); 
                $('#e_g_total').val(data.total);

                $('#e_tr_des').hide();
                $('#e_tr_unit').hide();
                $('#e_tr_qty').hide();
                $('#e_tr_mat').hide();
                $('#e_tr_labor').hide(); 
                $('#e_tr_toll').show();
                $('#e_tr_gas').show();
            }
            else
            {
                $('#e_bill_id').val(data.bill_id);
                $('#e_title').val(data.title);
                $('#title_value').val(data.title);
                $('#e_description').val(data.description);
                $('#e_qty').val(data.quantity);
                $('#e_unit').val(data.unit);
                $('#e_mat').val(data.materials);
                $('#e_labor').val(data.labor);
                $('#e_g_total').val(data.total);


                $('#e_tr_toll').hide();
                $('#e_tr_gas').hide();
                $('#e_tr_description').show();
                $('#e_tr_unit').show();
                $('#e_tr_qty').show();
                $('#e_tr_mat').show();
                $('#e_tr_labor').show(); 
            }  
        }  
    }); 
}




$(document).ready(function() { 
       

    $('#btn-view-quotation').on('click', function(){    
        $.ajax({
            type : 'post',
            data : $('#frm-request-quotation').serialize() ,
            dataType : 'json',
            url : base_url + 'admin/Request/find_quotation',
            success : function(quotation_id) {
                window.open(base_url+ 'admin/Quotation/view/' +  quotation_id);
            }
        }); 
    });



    $('#btn-print-quot').on('click', function(){   
        var id = $('#quotation_id').val();
        window.open(base_url + 'quotation/print/' + id , 'name' , 'width=1366px , height = 768px');
    });
 





    $('#search-project').on('change', function(){   
        $.ajax({
            type: 'post',
            data: {id : $(this).val()},  
            dataType: 'json',  
            url: base_url + 'admin/inventory/export_to_project',
            success : function(response) {
                var html = ''; 
                    html += '<img class="img-responsive" src="'+ base_url + response["imagePath"] +'">'; 
                    html += '<br><strong>Project Name : </strong>' + response["project_name"];
                    html += '<br><strong>Description : </strong>' + response["scope_of_work"];
                    html += '<br><strong>Status : </strong>' + response["projectStatus"];
                $('#project-info').html(html);
            }
        });
    });



    $('#btn-change-status').on('click', function(){    
        $.ajax({
            type: 'post',
            data: {p_status : $('#p_status').val()},  
            dataType: 'json',  
            url: base_url + 'project/start',
            success : function(response) {   
                $('#p_stats').html(response);
                var alert = '<div class="alert alert-info notification fade-in">';
                alert += '<a class="close" data-dismiss="alert" aria-label="close">x</a>';
                alert += '<h4>Project Status successfully updated</h4>';
                $('#alert').html(alert);   
            }

        });
    });



    $('#btn-export-item-confirm').on('click', function(){   
        $.ajax({
            type: 'post',
            data: $('#frm-check').serialize(),  
            dataType: 'json',  
            url: base_url + 'admin/inventory/export_item_list',
            success : function(response) {  
                var html = '<table class="table">';
                html +='<thead>'; 
                html +='<tr>' ;
                html +='<th> Item Name </th>';
                html +='<th> Stock </th>'; 
                html +='<th> Quantity to be imported </th>';
                html +='</tr>'; 
                html +='</thead>';
                html +='<tbody>';
                for (var i = 0; i <= response.length - 1; i++) {
                html += '<input type="hidden" value="'+response[i]["id"]+'" name="'+response[i]["id"]+'">';
                html += '<tr>';
                html += '<td>'+ response[i]["itemName"] +'</td>';
                html += '<td>'+ response[i]["stockOnHand"] +'</td>';
                html += '<td><input name="'+ response[i]["id"] +'quantity" type="number" class="form-control"></td>';
                html += '</tr>'; 
                } 
                html +='</tbody>';
                html +='</table>'; 

                $('#item-export-form').html(html);
            } 
        });
    });

    $('#btn-delete-item').on('click', function(){  
        $.ajax({
            type: 'post',
            data: $('#frm-check').serialize(),  
            url: base_url + 'admin/inventory/delete',
            success : function(response) {
                window.location.href = base_url + 'inventory';
            } 
        });
    });

    $('#btn-edit-item').on('click', function(){  
        $.ajax({
            type: 'post',
            data: $('#frm-check').serialize(),  
            dataType : 'json',
            url: base_url + 'admin/inventory/item_to_be_updated',
            success : function(response) {
                var html ='';
                for (var i = 0; i <= response.length - 1; i++) { 
                    html += '<input type="hidden" name='+response[i]["id"]+' value='+ response[i]["id"] +'>';
                    html +='<div class="col-sm-4"> <p><br>Item Name</p>';
                    html +='<input type="text" name="'+response[i]["id"] +'itemName" value='+ response[i]["itemName"] +' class="form-control" required>' ;
                    html +='</div>' ;
                    html +='<div class="col-sm-4"> <p><br>Unit</p>' ;
                    html +='<select class="form-control select2"  name="'+response[i]["id"] +'unit">' ;
                    html += '<option>'+ response[i]["unit"] +'</option>' ;
                    html += '<option>Pieces</option>' ;
                    html +='<option>Box</option>' ;
                    html += '<option>Meter</option>' ;
                    html += '<option>Liter</option>' ;
                    html += '<option>kilogram</option>' ;
                    html += '<option>Pack</option>' ;
                    html +='<option>Dozen</option>' ;
                    html += '<option>Bundle</option>' ;
                    html +='</select>' ;
                    html +=  '<br> ' ;
                    html +='</div>' ;
                    html +='<div class="col-sm-4"> <p><br>Size</p>' ;
                    html +='<input type="text"  name="'+response[i]["id"] +'size" value='+ response[i]["size"] +' class="form-control" required>' ;
                    html +='</div>' ;

                    html +='<div class="col-sm-8"> ' ;
                    html += '<p><br>Item Description</p>' ;
                    html += '<textarea style="height: 110px;"  name="'+response[i]["id"] +'itemDescription" class="form-control" required>'+response[i]["itemDescription"] +'</textarea>' ;
                    html +='</div>' ;
                    html +='<div class="col-sm-4"> ' ;
                    html += '<p><br>Color</p>' ;
                    html += '<input type="text" value='+ response[i]["color"] +'  name="'+response[i]["id"] +'color" class="form-control" required>' ;

                    html +='<p><br>Price</p>' ;
                    html +='<input type="number" value='+ response[i]["price"] +'  name="'+response[i]["id"] +'price" class="form-control" required>' ;

                    html +='</div> ' ;
                    html +='<div class="col-sm-4"> <p><br>Stock</p>' ;
                    html +='<input type="number" value='+ response[i]["stockOnHand"] +'  name="'+response[i]["id"] +'stockOnHand" class="form-control">' ;
                    html +='</div>' ;
                    html +='<div class="col-sm-4"> <p><br>Maximum Stock</p>' ;
                    html += '<input value='+ response[i]["maximumStock"] +' type="number"  name="'+response[i]["id"] +'maximumStock" class="form-control">' ;
                    html +='</div>' ;
                    html +='<div class="col-sm-4"> <p><br>Minimum Stock</p>' ;
                    html +='<input  value='+ response[i]["criticalStock"] +' type="number"  name="'+response[i]["id"] +'criticalStock" class="form-control">' ;
                    html +='<br><br>' ;
                    html +='</div>';
                    html += '<div class="col-md-12"><hr></div>' ;
                } 
                $('#item-update-form').html(html); 
            } 
        });
    });


       $('#btn-delete-item-confirm').on('click', function(){  
              $.ajax({
                     type: 'post',
                     data: $('#frm-check').serialize(), 
                     dataType: 'json',
                     url: base_url + 'admin/inventory/delete_confirm',
                     success : function(response) {
                            var html ='<h4>You are going to delete : </h4>'; 
                            html += '<blockquote>';
                            for (var i = 0; i <= response.length - 1; i++) {
                                   html +=  response[i] + '<br>' ;
                            } 
                            html += '</blockquote>';
                            $('#confirm_del_item').html(html);
                     } 
              });
       });


    $('#btn-approved-quot').on('click', function(){ 
        $.ajax({
            type     : 'post',
            data     : { quotation_id :$('#quotation_id').val()},  
            url      : base_url + 'admin/Quotation/approved_quotation',
            success  : function(response) {
                alert('Quotation Successfully Approved');
                $('#btn-approved-quot').hide('slow');
            } 
        });

    });


       $('#search_useraccount').on('change', function(){  
              $.ajax({
                     type: 'POST', 
                     data: {name: $('#search_useraccount').val()},
                     dataType: 'json',
                     url: base_url + 'admin/Account/search',  
   
                     success: function(data){ 
                            $('#found_useraccounts').html(data); 
                     }  
              });
       });


       $('#search_user_log').on('change', function(){  
              $.ajax({
                     type: 'POST', 
                     data: {name: $('#search_user_log').val()},
                     dataType: 'json',
                     url: base_url + 'admin/Logs/search',  
   
                     success: function(data){ 
                            $('#found_user_logs').html(data); 
                     }  
              });
       });


    $('#search_client').on('change', function(){ 
        var client_id = $(this).val();     
        $.ajax({
            type     : 'POST', 
            data     : {client_id: client_id},
            dataType : 'json',
            url      : base_url + 'admin/Quotation/get_client',  
            success  : function(response){ 
                $('#fullname').val(response[0]["client_name"]); 
                $('#no').val(response[0]["client_number"]); 
                $('#email').val(response[0]["client_email"]);  
                $('#address').val(response[0]["client_address"]);  
                $('#position').val(response[0]["client_position"]);   
            }  
        });
    });



    $('#project_select').on('change', function(){ 
        var project_id = $(this).val();     
        $.ajax({
            type     : 'POST', 
            data     : {project_id: project_id},
            dataType : 'json',
            url      : base_url + 'admin/Project/find_project',   
            success  : function(response){ 
                var img = '<img src="'+ base_url + response[0]["imagePath"] +'">';
                $('#p_name').html(response[0]["project_name"]);
                $('#p_des').html(response[0]["project_description"]);
                $('#p_status').html(response[0]["projectStatus"]);
                $('#c_name').html(response[0]["client_name"]); 
                $('#img').html(img); 
            }  
        });
    });



       $('#btn-inventory').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'inventory'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-activitylog').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'activitylog'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-useraccount').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'useraccount'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-profile').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'profile'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-client').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'client'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-request').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'request'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-quotation').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'quotation'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });


       $('#btn-expense').on('click', function(){ 
              $.ajax({
                     type: 'POST', 
                     data: {type: 'expense'}, 
                     url: base_url + 'admin/dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });

       $('#btn-project').on('click', function(){  
              $.ajax({
                     type: 'POST', 
                     data: {type: 'project'}, 
                     url: base_url + 'admin/Dashboard/notif_delete',   
                     success: function(data){ 
                            window.location.href = base_url + 'dashboard';
                     }  
              });
       });



    $('#find_leader').on('change', function(){ 
        var account_id = $(this).val();     
        $.ajax({
            type     : 'POST', 
            data     : {account_id: account_id},
            dataType : 'json',
            url      : base_url + 'admin/Account/find_leader',  
            success  : function(response){ 
                var html =  "<div class='col-md-5'>";
                    html +=  "<center>";
                        html +=  "<img class='image-preview' src="+ base_url + response[0]['imagePath'] +"  id='image-preview'>"; 
                        html +=  "<p><br><i>New Leader</i></p> ";
                    html +=  "</center>";
                html +=  "</div>"; 

                html +=  "<div class='col-md-7'>";
                    html +=  "<br><br><h4>User Information<br></h4> ";
                    html +=  "<table class='table'>";
                        html +=  "<tbody>"; 
                            html +=  "<tr>";
                                html +=  "<th>FullName</th>";
                                html +=  "<td>" + response[0]['fullName'] + "</td>"; 
                            html +=  "</tr>"; 
                            html +=  "<tr>";
                                html +=  "<th>Email Address</th>";
                                html +=  "<td>" + response[0]['email'] + "</td>";
                            html +=  "</tr>"; 
                            html +=  "<tr>";
                                html +=  "<th>Gender</th>";
                                html +=  "<td>" + response[0]['Gender'] + "</td>";
                            html +=  "</tr>"; 
                            html +=  "<tr>";
                                html +=  "<th>Home Address</th>";
                                html +=  "<td>" + response[0]['Address'] + "</td>";
                            html +=  "</tr>"; 
                            html +=  "<tr>";
                                html +=  "<th>User Type</th>";
                                html +=  "<td>" + response[0]['userType'] + "</td>";
                            html +=  "</tr>"; 
                        html +=  "</tbody>";
                    html +=  "</table>";
                html +=  "</div>";   
                $('#project_leader').html(html);
            }  
        });
    });




       $('#save_bill').on('click', function(){   

              $.ajax({
                     type: 'POST', 
                     data: {
                            title: $('#title').val(), 
                            gas: $('#gas').val(), 
                            toll: $('#toll').val(), 
                            other: $('#other').val(), 
                            description: $('#description').val(), 
                            qty: $('#qty').val(), 
                            unit: $('#unit').val(), 
                            materials: $('#mat').val(), 
                            labor: $('#labor').val(),
                            total: $('#g_total').val()

                            },
                     dataType: 'json',
                     url: base_url + 'admin/Quotation/add_bill',  
   
                     success: function(data){ 
                            $('#bill_of_quantities').html(data.table);
                            $('#title').html(data.title);
                            $('#bille').val(data.bill_info);
                            $('#bill').val(data.bill_info);

                            // COST
                            $('#wc').val(data.labor_cost); 
                            $('#tc').val(data.gas_cost + data.toll_cost); 
                            $('#mc').val(data.material_cost); 
                            $('#ptc').val(data.material_cost + data.labor_cost + data.gas_cost + data.toll_cost); 
                            // $('#g_total').val(data.material_cost + data.labor_cost + data.gas_cost + data.toll_cost);  

                            $('#title').val('');
                            $('#description').val('');
                            $('#qty').val('');
                            $('#unit').val('');
                            $('#mat').val('');
                            $('#labor').val('');
                            $('#g_total').val('');
                            $('#other').val('');
                            $('#gas').val('');
                            $('#toll').val('');
                     }  
              });
      });

       $('#update_bill').on('click', function(){   

              $.ajax({
                     type: 'POST', 
                     data: {
                            e_bill_id: $('#e_bill_id').val(), 
                            e_title: $('#e_title').val(), 
                            e_gas: $('#e_gas').val(), 
                            e_toll: $('#e_toll').val(), 
                            e_other: $('#e_other').val(), 
                            e_description: $('#e_description').val(), 
                            e_qty: $('#e_qty').val(), 
                            e_unit: $('#e_unit').val(), 
                            e_mat: $('e_#mat').val(), 
                            e_labor: $('#e_labor').val(),
                            e_g_total: $('#e_g_total').val()

                            },
                     dataType: 'json',
                     url: base_url + 'admin/Quotation/update_bill',  
   
                     success: function(data){  
                            $('#bill_of_quantities').html(data.table);
                            $('#title').html(data.title);
                            $('#bill').val(data.bill_info); 

                            // COST
                            $('#wc').val(data.labor_cost); 
                            $('#tc').val(data.gas_cost + data.toll_cost); 
                            $('#mc').val(data.material_cost); 
                            $('#ptc').val(data.material_cost + data.labor_cost + data.gas_cost + data.toll_cost); 
                     }  
              });
      });
       
});

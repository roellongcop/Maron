
$(function () {
//Add text editor
$(".compose").wysihtml5();
});

function toggle(id)
{ 
$('#profile'+id).toggle('slow');
}

function export_item(item_id)
{
// alert(item_id);
$('#item_id').val(item_id);
}

function check_qty() 
{
var stock , qty ;
stock = parseFloat(document.getElementById('stock').value);
qty = parseFloat(document.getElementById('qty').value);

if (qty > stock) {
document.getElementById('export').style.display = "none";
} else {
document.getElementById('export').style.display = "block";

}
}  

function previewImage() 
{
var oFReader = new FileReader();
oFReader.readAsDataURL(document.getElementById("image").files[0]);

oFReader.onload = function(oFREvent) {
document.getElementById("image-preview").src = oFREvent.target.result;
};
}

function total_bill_edited(bill_id) 
{
var m , l , t ;
m = parseFloat(document.getElementById('labor'+ bill_id).value);
l = parseFloat(document.getElementById('mat'+ bill_id).value); 
t = m + l ;
document.getElementById('g_total' + bill_id).value = t; 
}

function total_bill(transport = 'false') 
{
if (transport == 'false') 
{
var m , l , t ;
m = parseFloat(document.getElementById('labor').value);
l = parseFloat(document.getElementById('mat').value); 
t = m + l ;
document.getElementById('total_bill').value = t;
document.getElementById('g_total').value = t; 

m = parseFloat(document.getElementById('e_labor').value);
l = parseFloat(document.getElementById('e_mat').value); 
t = m + l ;
document.getElementById('e_total_bill').value = t;
document.getElementById('e_g_total').value = t; 
} else {
var m , l , t ;
m = parseFloat(document.getElementById('gas').value);
l = parseFloat(document.getElementById('toll').value); 
t = m + l ;
document.getElementById('total_bill').value = t;
document.getElementById('g_total').value = t; 

m = parseFloat(document.getElementById('e_gas').value);
l = parseFloat(document.getElementById('e_toll').value); 
t = m + l ;
document.getElementById('e_total_bill').value = t;
document.getElementById('e_g_total').value = t; 
}

}

function getTotalCost() 
{
var mc , wc , tc , ptc;
mc = parseFloat(document.getElementById('mc').value);
wc = parseFloat(document.getElementById('wc').value);
tc = parseFloat(document.getElementById('tc').value);
ptc = mc + wc + tc ;
document.getElementById('ptc').value = ptc;
}


    window.setTimeout(function(){
        $('.alert').fadeTo(2000, 0).slideUp(10, function(){
            $(this).remove();
        });
    }, 4000);

    function reset()
    {
        $('#project-info').html('');
        $('#confirm_del_item').html('');
        $('#item-update-form').html('');
        $('#item-export-form').html('');
    }

$(document).ready(function() {   

    $('.btn').tooltip();

    $('#print-graph').on('click' , function(){
        window.open(base_url + 'admin/expense/print_graph' , 'name' , 'width=1366px , height = 768px;'); 
    });


    $('#print-profit').on('click' , function(){
        window.open(base_url + 'admin/Profit/print_profit' , 'name' , 'width=1366px , height = 768px;'); 
    })


    $('#print-table').on('click' , function(){
        window.open(base_url + 'admin/expense/print_table' , 'name' , 'width=1366px , height = 768px;'); 
    });


    $('#btn-print-inventory-all').on('click' , function(){
        window.open(base_url + 'inventory/print/All' , 'name' , 'width = 1366px; , height= 768px;');
    })


    $('#btn-print-expenses-chart').on('click' , function(){
        window.open(base_url + 'expenses' , 'name' , 'width = 1366px; , height= 768px;');
    })


    $('#btn-print-inventory-exceed').on('click' , function(){
        window.open(base_url + 'inventory/print/Exceed' , 'name' , 'width = 1366px; , height= 768px;');
    })

    $('#btn-print-expenses-today').on('click' , function(){
        window.open(base_url + 'expenses/print/today' , 'name' , 'width = 1366px; , height= 768px;');
    })

    $('#btn-print-expenses-all').on('click' , function(){
        window.open(base_url + 'expenses/print/all' , 'name' , 'width = 1366px; , height= 768px;');
    })
    


    $('#btn-print-inventory-normal').on('click' , function(){
        window.open(base_url + 'inventory/print/Normal' , 'name' , 'width = 1366px; , height= 768px;');
    })


    $('#btn-print-inventory-critical').on('click' , function(){
        window.open(base_url + 'inventory/print/Critical' , 'name' , 'width = 1366px; , height= 768px;');
    })

    $('#btn-print-inventory-empty').on('click' , function(){
        window.open(base_url + 'inventory/print/Empty' , 'name' , 'width = 1366px; , height= 768px;');
    })




    $('.check-all').on('click', function(){   
        reset();
    });

    $('.check-critical').on('click', function(){   
        reset();
    });

    $('.check-empty').on('click', function(){   
        reset();
    });

    $('.check-exceed').on('click', function(){   
        reset();
    });

    $('.check-normal').on('click', function(){   
        reset();
    });

    $('#check-all').on('click', function(){  
        $('.check-all').click();
        reset();
    });

    $('#check-critical').on('click', function(){  
        $('.check-critical').click();
        reset();
    });

    $('#check-exceed').on('click', function(){  
        $('.check-exceed').click();
        reset();
    });

    $('#check-empty').on('click', function(){  
        $('.check-empty').click();
        reset();
    });

    $('#check-normal').on('click', function(){  
        $('.check-normal').click();
        reset();
    });

    $('#nxt_client').on('click', function(){  
        $('#client_info').removeClass('active');
        $('#project_info').addClass('active');
    });

    $('#nxt_project').on('click', function(){  
        $('#project_info').removeClass('active');
        $('#bill_info').addClass('active');
    });

    $('#prev_project').on('click', function(){  
        $('#project_info').removeClass('active');
        $('#client_info').addClass('active'); 
    });

    $('#nxt_bill').on('click', function(){  
        $('#bill_info').removeClass('active');
        $('#summary_info').addClass('active'); 
    });

    $('#prev_bill').on('click', function(){  
        $('#bill_info').removeClass('active'); 
        $('#project_info').addClass('active');  
    });

    $("#show_themes").click(function(){
        $("#themes").show("slow"); 
        $("#layout").hide("slow"); 
    });


    $("#show_layouts").click(function(){
        $("#themes").hide("slow"); 
        $("#layout").show("slow"); 
    });

    $("#update_profile_account").click(function(){
        $("#user_details").toggle("slow"); 
        $("#update_account").toggle("slow"); 
    }); 

    $("#settings_show").click(function(){
        $("#btn-menu").toggle("slow");  
        $("#settings_show").toggle("slow");  
    });

    $("#settings_hide").click(function(){
        $("#btn-menu").toggle("slow");  
        $("#settings_show").toggle("slow");   
    });


    $('#image').on('change', function(){
        $('#btn-project-image').fadeIn('slow');
    });


    $('#title').on('change', function() {
        if ($(this).val() == 'Transportation') {
            $('#tr_des').hide('slow');
            $('#tr_qty').hide('slow');
            $('#tr_unit').hide('slow');
            $('#tr_mat').hide('slow');
            $('#tr_labor').hide('slow'); 
            $('#tr_toll').show('slow'); 
            $('#tr_gas').show('slow');   
        }
        else {
            $('#tr_des').show('slow');
            $('#tr_qty').show('slow');
            $('#tr_unit').show('slow');
            $('#tr_mat').show('slow');
            $('#tr_labor').show('slow'); 
            $('#tr_toll').hide('slow'); 
            $('#tr_gas').hide('slow');  
        }
    });

    $('#e_title').on('change', function() {
        if ($(this).val() == 'Transportation') {
            $('#e_tr_des').hide('slow');
            $('#e_tr_qty').hide('slow');
            $('#e_tr_unit').hide('slow');
            $('#e_tr_mat').hide('slow');
            $('#e_tr_labor').hide('slow'); 
            $('#e_tr_toll').show('slow'); 
            $('#e_tr_gas').show('slow');  
        }
        else {
            $('#e_tr_des').show('slow');
            $('#e_tr_qty').show('slow');
            $('#e_tr_unit').show('slow');
            $('#e_tr_mat').show('slow');
            $('#e_tr_labor').show('slow'); 
            $('#e_tr_toll').hide('slow'); 
            $('#e_tr_gas').hide('slow');  
        }
    });


    $('#datepicker').datepicker({ autoclose: true  });

    $('#datepicker1').datepicker({ autoclose: true });
    $('.example').DataTable();
    $('#material_expense').DataTable();
    $('#worker_expense').DataTable();
    $('#transpo_expense').DataTable();
    $('[data-toggle="popover"]').popover()
    $('.select2').select2(); 





    $("#com_name").click(function(){ $("#cn").toggle("slow");  });

    $(".toggle_add_images").click(function(){ $(".add_new_images").toggle("slow");  }); 

    $('[data-toggle="tooltip"]').tooltip();  

    $('#worker').dataTable( {
        "sPaginationType": "bootstrap",
        "oLanguage": {  }
    });

    $('#transpo').dataTable( {
        "sPaginationType": "bootstrap",
        "oLanguage": {  }
    });



    // Add smooth scrolling to all links in navbar + footer link
    $(" a[href='#breakdown'] , a[href='#expenses_graph'], a[href='#project_information'], a[href='#accomplishments'] , a[href='#go_to_top'] ").on('click', function(event) {
 
    event.preventDefault();
 
    var hash = this.hash;
 
    $('html, body').animate({
        scrollTop: $(hash).offset().top
                }, 900, function(){  
                window.location.hash = hash;
            }
        );
    });


    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal 
    // span.onclick = function()  {  modal.style.display = "none"; }

    // Get all images and insert the clicked image inside the modal
    // Get the content of the image description and insert it inside the modal image caption
    var images = document.getElementsByTagName('img');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");
    var i;
    for (i = 0; i < images.length; i++) {
        images[i].onclick = function(){
            modal.style.display = "block";
            modalImg.src = this.src;
            modalImg.alt = this.alt;
            captionText.innerHTML = this.nextElementSibling.innerHTML;
        }
    }


});
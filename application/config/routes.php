<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
// YUNG PINAKA UNA YUNG PRIORITY PERO UUNAHIN PARIN ILLOAD YUNG DEFAULT
// PAG (:any) IBIG SABIHIN KAHIT ANO YUNG KASUNOD  BABASAHIN NA YUNG ROUTE


$route['default_controller'] = 'login/site';

 
// SITE
$route['site/login_modal'] = 'site/user/login_modal';  
$route['site'] = 'site/home';  
$route['site/about'] = 'site/pages/about'; 
$route['site/teams'] = 'site/pages/teams'; 
$route['site/projects'] = 'site/pages/projects';  
$route['site/services'] = 'site/pages/services';  
$route['site/products'] = 'site/pages/products';  
$route['site/forgot_password'] = 'site/pages/forgot_password';  
$route['site/register_ok'] = 'site/pages/register_ok';  




$route['client_notif/view/(:any)'] = 'site/user/quotation_view/$1'; 
$route['site/user/resend_request/(:any)'] = 'site/user/resend_request/$1'; 
$route['site/user/approved_quotation/(:any)'] = 'site/user/approved_quotation/$1'; 
$route['site/request_list'] = 'site/user/request_list'; 
$route['site/projects/(:any)'] = 'site/user/project_view/$1'; 
$route['site/home'] = 'site/user/dashboard';
$route['site/client_project_list'] = 'site/user/project_list';
$route['site/login'] = 'site/user/login'; 
$route['site/signup'] = 'site/user/signup';  
$route['site/delete_request'] = 'site/user/delete_request';  
$route['delete_project_request'] = 'site/user/delete_project_request';   
$route['client_profile'] = 'site/user/client_profile';   
$route['register'] = 'site/user/register';   
$route['request_done'] = 'site/user/request_done';   
$route['accomplishments'] = 'site/user/accomplishments';   
$route['verify/(:any)'] = 'site/user/verify/$1';   
$route['request_project'] = 'site/user/request';    
$route['save_request'] = 'site/user/save_request';    
$route['request_info/(:any)'] = 'site/user/request_info/$1';    
$route['site/logout'] = 'site/user/logout';    
$route['client_notification'] = 'site/user/notification';    
$route['update_profile'] = 'site/user/update_profile';    
 







// ADMIN
$route['bill/delete/(:any)'] = 'quotation/bill_delete/$1';
 

$route['profile'] = 'admin/profile/get_profile';
$route['profile/location/(:any)'] = 'admin/profile/get_profile/$1';
$route['profile/update_form/(:any)'] = 'admin/profile/update_form/$1';
$route['profile/add'] = 'admin/profile/add';
$route['profile/update'] = 'admin/profile/update';
$route['profile/delete/(:any)'] = 'admin/profile/delete/$1';




$route['quotation/print/(:any)'] = 'admin/quotation/print_quotation/$1';
$route['quotation/save_update'] = 'admin/quotation/save_update';
$route['quotation/add_form'] = 'admin/quotation/add_form'; 
$route['quotation/save'] = 'admin/quotation/save';
$route['quotation/(:any)'] = 'admin/quotation/index/$1';
$route['quotation/delete/(:any)'] = 'admin/quotation/delete/$1';
$route['quotation/edit/(:any)'] = 'admin/quotation/update_form/$1';
$route['quotation/view/(:any)'] = 'admin/quotation/view/$1';
$route['quotation'] = 'admin/quotation';

 
$route['request'] = 'admin/request';
$route['request/create_quotation/(:any)'] = 'admin/request/create_quotation/$1';
$route['request/disapproved/(:any)'] = 'admin/request/disapproved/$1';
$route['request/quotation/save'] = 'admin/request/quotation_save';

 
 
$route['notif/delete'] = 'admin/dashboard/notif_delete';
// $route['notif/delete/(:any)'] = 'admin/dashboard/notif_delete/$1';
 


$route['personnels'] = 'admin/profile/personnels';
$route['personnels/person_delete/(:any)'] = 'admin/profile/personnels_delete/$1';
$route['personnels/update'] = 'admin/profile/do_upload/update';
$route['personnels/add'] = 'admin/profile/do_upload';
 

$route['products/image_delete/(:any)'] = 'admin/profile/product_image_delete/$1';
$route['products/add_product_images'] = 'admin/profile/add_product_images';
$route['products'] = 'admin/profile/products';
$route['product/delete/(:any)'] = 'admin/profile/product_delete/$1';
$route['products/upload'] = 'admin/profile/upload_products';
$route['products/add_products'] = 'admin/profile/add_form_products';
$route['products/save_products'] = 'admin/profile/save_products';
$route['products/product_view/(:any)'] = 'admin/profile/view_product/$1';

$route['services/image_delete/(:any)'] = 'admin/profile/service_image_delete/$1';
$route['services/add_service_images'] = 'admin/profile/add_service_images';
$route['services/upload'] = 'admin/profile/upload_services';
$route['services'] = 'admin/profile/services';
$route['services/service_view/(:any)'] = 'admin/profile/view_service/$1';
$route['services/delete/(:any)'] = 'admin/profile/service_delete/$1';
$route['services/add_services'] = 'admin/profile/add_form_services';
$route['services/save_services'] = 'admin/profile/save_services';


$route['login'] = 'login';
$route['logout'] = 'login/logout';
$route['login/login'] = 'login/login';

$route['activitylog'] = 'admin/logs/set_id';
$route['logs/get/(:any)'] = 'admin/logs/get_logs/$1';
$route['logs/delete/(:any)'] = 'admin/logs/delete/$1';
$route['logs/delete_all/(:any)'] = 'admin/logs/delete_all/$1';

// FOR THE DESIGN
$route['theme/(:any)'] = 'admin/cms/theme/$1';
$route['layout/(:any)'] = 'admin/cms/layout/$1';



 

$route['profit'] = 'admin/profit';

$route['expenses'] = 'admin/expense/view/monthly';
$route['expenses/print/(:any)'] = 'admin/expense/print_expenses/$1';
$route['expense/update_material'] = 'admin/expense/update_material';
$route['expense/update_worker'] = 'admin/expense/update_worker';
$route['expense/update_transpo'] = 'admin/expense/update_transpo';
$route['expense/add_material'] = 'admin/expense/add_material';
$route['expense/add_transpo'] = 'admin/expense/add_transpo';
$route['expense/add_worker'] = 'admin/expense/add_worker';
$route['expense/delete_worker/(:any)'] = 'admin/expense/delete_worker/$1';
$route['expense/delete_material/(:any)'] = 'admin/expense/delete_material/$1';
$route['expense/delete_transpo/(:any)'] = 'admin/expense/delete_transpo/$1';



$route['account/get/(:any)'] = 'admin/account/get_account/$1';
$route['account/update_form/(:any)'] = 'admin/account/update_form/$1';
$route['account/save_update/(:any)'] = 'admin/account/do_upload/$1';
$route['account/add_form'] = 'admin/account/add_form';
$route['account/save'] = 'admin/account/do_upload/0';
$route['account/delete/(:any)'] = 'admin/account/delete/$1';


$route['dashboard'] = 'admin/dashboard';

$route['accomplishments/upload'] = 'admin/project/accomplishments';
$route['accomplishment/save'] = 'admin/project/accomplishments_save';

$route['projects'] = 'admin/project';
$route['project/leader'] = 'admin/project/set_leader';
$route['project/update_image'] = 'admin/project/do_upload';
$route['project/add/(:any)'] = 'admin/project/save/$1';
$route['project/save_update/(:any)'] = 'admin/project/do_upload/$1';
$route['project/add_form'] = 'admin/project/add_form';
$route['project/project_view/(:any)'] = 'admin/project/project_view/$1';
$route['project/start'] = 'admin/project/project_status';
$route['project/delete/(:any)'] = 'admin/project/delete/$1'; 
$route['project/list/(:any)'] = 'admin/project/index/$1'; 
$route['request/request_view/(:any)'] = 'admin/request/request_view/$1'; 



$route['clients'] = 'admin/client';
$route['client/add'] = 'admin/client/save';
$route['client/delete/(:any)'] = 'admin/client/delete/$1';
$route['client/update'] = 'admin/client/update';

$route['item/export'] = 'admin/inventory/save_export';


$route['inventor'] = 'admin/inventory'; 
$route['inventory/list/(:any)'] = 'admin/inventory/index/$1'; 
$route['inventory/print/(:any)'] = 'admin/inventory/print_inventory/$1';
$route['inventory/save'] = 'admin/inventory/save';
$route['inventory/add_form'] = 'admin/inventory/add_form';
// $route['inventory/save_update/(:any)'] = 'admin/inventory/save_update/$1';
// $route['inventory/update_form/(:any)'] = 'admin/inventory/update_form/$1'; 
$route['inventory/export'] = 'admin/inventory/export'; 
$route['inventory/update'] = 'admin/inventory/update'; 
$route['inventory'] = 'admin/inventory';
$route['inventory/delete/(:any)'] = 'admin/inventory/delete/$1'; 




$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

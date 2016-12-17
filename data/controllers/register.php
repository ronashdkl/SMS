<?php if ( ! defined('BASEPATH')) show_404();?>

<?php

/* 
 *  Author: Ronash Dhakal
 *  Project: Hotel Management NBPI
 *  Group: Ronash, Bikash, Dipendra, Sumit
 */

class Register extends CI_Controller{
    
    public function index(){
       if ($this->aauth->is_loggedin()){
         
                     redirect("welcome");
       }else{
        $this->load->view("public/register");
       }
    }
    
}

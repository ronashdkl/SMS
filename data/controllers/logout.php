<?php

/* 
 *  Author: Ronash Dhakal
 *  Project: Hotel Management NBPI
 *  Group: Ronash, Bikash, Dipendra, Sumit
 */
class Logout extends CI_Controller{
    
    public function index(){
        
        $this->sms->logout();
        redirect("login");
    }
    
}


